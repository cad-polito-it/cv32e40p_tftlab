module cv32e40p_cs_registers_tmr
  import cv32e40p_pkg::*;
#(
    parameter N_HWLP           = 2,
    parameter APU              = 0,
    parameter A_EXTENSION      = 0,
    parameter FPU              = 0,
    parameter ZFINX            = 0,
    parameter PULP_SECURE      = 0,
    parameter USE_PMP          = 0,
    parameter N_PMP_ENTRIES    = 16,
    parameter NUM_MHPMCOUNTERS = 1,
    parameter COREV_PULP       = 0,
    parameter COREV_CLUSTER    = 0,
    parameter DEBUG_TRIGGER_EN = 1
) (
    // Clock and Reset
    input logic clk,
    input logic rst_n,

    // Hart ID
    input  logic [31:0] hart_id_i,
    output logic [23:0] mtvec_o,
    output logic [23:0] utvec_o,
    output logic [ 1:0] mtvec_mode_o,
    output logic [ 1:0] utvec_mode_o,

    // Used for mtvec address
    input logic [31:0] mtvec_addr_i,
    input logic        csr_mtvec_init_i,

    // Interface to registers (SRAM like)
    input  csr_num_e           csr_addr_i,
    input  logic        [31:0] csr_wdata_i,
    input  csr_opcode_e        csr_op_i,
    output logic        [31:0] csr_rdata_o,

    output logic               fs_off_o,
    output logic [        2:0] frm_o,
    input  logic [C_FFLAG-1:0] fflags_i,
    input  logic               fflags_we_i,
    input  logic               fregs_we_i,

    // Interrupts
    output logic [31:0] mie_bypass_o,
    input  logic [31:0] mip_i,
    output logic        m_irq_enable_o,
    output logic        u_irq_enable_o,

    //csr_irq_sec_i is always 0 if PULP_SECURE is zero
    input  logic        csr_irq_sec_i,
    output logic        sec_lvl_o,
    output logic [31:0] mepc_o,
    output logic [31:0] uepc_o,
    //mcounteren_o is always 0 if PULP_SECURE is zero
    output logic [31:0] mcounteren_o,

    // debug
    input  logic        debug_mode_i,
    input  logic [ 2:0] debug_cause_i,
    input  logic        debug_csr_save_i,
    output logic [31:0] depc_o,
    output logic        debug_single_step_o,
    output logic        debug_ebreakm_o,
    output logic        debug_ebreaku_o,
    output logic        trigger_match_o,


    output logic [N_PMP_ENTRIES-1:0][31:0] pmp_addr_o,
    output logic [N_PMP_ENTRIES-1:0][ 7:0] pmp_cfg_o,

    output PrivLvl_t priv_lvl_o,

    input logic [31:0] pc_if_i,
    input logic [31:0] pc_id_i,
    input logic [31:0] pc_ex_i,

    input logic csr_save_if_i,
    input logic csr_save_id_i,
    input logic csr_save_ex_i,

    input logic csr_restore_mret_i,
    input logic csr_restore_uret_i,

    input logic                    csr_restore_dret_i,
    //coming from controller
    input logic [       5:0]       csr_cause_i,
    //coming from controller
    input logic                    csr_save_cause_i,
    // Hardware loops
    input logic [N_HWLP-1:0][31:0] hwlp_start_i,
    input logic [N_HWLP-1:0][31:0] hwlp_end_i,
    input logic [N_HWLP-1:0][31:0] hwlp_cnt_i,

    // Performance Counters
    input logic mhpmevent_minstret_i,
    input logic mhpmevent_load_i,
    input logic mhpmevent_store_i,
    input logic mhpmevent_jump_i,  // Jump instruction retired (j, jr, jal, jalr)
    input logic mhpmevent_branch_i,  // Branch instruction retired (beq, bne, etc.)
    input logic mhpmevent_branch_taken_i,  // Branch instruction taken
    input logic mhpmevent_compressed_i,
    input logic mhpmevent_jr_stall_i,
    input logic mhpmevent_imiss_i,
    input logic mhpmevent_ld_stall_i,
    input logic mhpmevent_pipe_stall_i,
    input logic apu_typeconflict_i,
    input logic apu_contention_i,
    input logic apu_dep_i,
    input logic apu_wb_i
);

parameter NUM_INSTANCES = 3;

logic fs_off_o_tmr[NUM_INSTANCES], m_irq_enable_o_tmr[NUM_INSTANCES], u_irq_enable_o_tmr[NUM_INSTANCES], sec_lvl_o_tmr[NUM_INSTANCES], debug_single_step_o_tmr[NUM_INSTANCES], debug_ebreakm_o_tmr[NUM_INSTANCES], debug_ebreaku_o_tmr[NUM_INSTANCES], trigger_match_o_tmr[NUM_INSTANCES];
logic [2:0] frm_o_tmr[NUM_INSTANCES];
logic [23:0] mtvec_o_tmr[NUM_INSTANCES], utvec_o_tmr[NUM_INSTANCES];
logic [1:0] mtvec_mode_o_tmr[NUM_INSTANCES], utvec_mode_o_tmr[NUM_INSTANCES];
logic [31:0] csr_rdata_o_tmr[NUM_INSTANCES], mie_bypass_o_tmr[NUM_INSTANCES], mepc_o_tmr[NUM_INSTANCES], uepc_o_tmr[NUM_INSTANCES], mcounteren_o_tmr[NUM_INSTANCES], depc_o_tmr[NUM_INSTANCES];
logic [N_PMP_ENTRIES-1:0][31:0] pmp_addr_o_tmr[NUM_INSTANCES];
logic [N_PMP_ENTRIES-1:0][7:0] pmp_cfg_o_tmr[NUM_INSTANCES];
PrivLvl_t priv_lvl_o_tmr[NUM_INSTANCES];

    genvar i;
    for(i=0; i < NUM_INSTANCES; i++) begin : inst_loop
        cv32e40p_cs_registers inst
        #(
            parameter N_HWLP           = 2,
            parameter APU              = 0,
            parameter A_EXTENSION      = 0,
            parameter FPU              = 0,
            parameter ZFINX            = 0,
            parameter PULP_SECURE      = 0,
            parameter USE_PMP          = 0,
            parameter N_PMP_ENTRIES    = 16,
            parameter NUM_MHPMCOUNTERS = 1,
            parameter COREV_PULP       = 0,
            parameter COREV_CLUSTER    = 0,
            parameter DEBUG_TRIGGER_EN = 1
        ) (
            .clk (clk),
            .rst_n (rst_n),
            hart_id_i (hart_id_i),
            mtvec_o_tmr (mtvec_o[i]),
            utvec_o_tmr (utvec_o[i]),
            mtvec_mode_o_tmr (mtvec_mode_o[i]),
            utvec_mode_o_tmr (utvec_mode_o[i]),
            mtvec_addr_i (mtvec_addr_i),
            csr_mtvec_init_i (csr_mtvec_init_i),
            csr_addr_i (csr_addr_i),
            csr_wdata_i (csr_wdata_i),
            csr_op_i (csr_op_i),
            csr_rdata_o_tmr (csr_rdata_o[i]),
            fs_off_o_tmr (fs_off_o[i]),
            frm_o_tmr (frm_o[i]),
            fflags_i (fflags_i),
            fflags_we_i (fflags_we_i),
            fregs_we_i (fregs_we_i),
            mie_bypass_o_tmr (mie_bypass_o[i]),
            mip_i (mip_i),
            m_irq_enable_o_tmr (m_irq_enable_o[i]),
            u_irq_enable_o (u_irq_enable_o),
            csr_irq_sec_i (csr_irq_sec_i),
            sec_lvl_o_tmr (sec_lvl_o[i]),
            mepc_o_tmr (mepc_o[i]),
            uepc_o_tmr (uepc_o[i]),
            mcounteren_o_tmr (mcounteren_o[i]),
            debug_mode_i (debug_mode_i),
            debug_cause_i (debug_cause_i),
            debug_csr_save_i (debug_csr_save_i),
            depc_o_tmr (depc_o[i]),
            debug_single_step_o_tmr (debug_single_step_o[i]),
            debug_ebreakm_o_tmr (debug_ebreakm_o[i]),
            debug_ebreaku_o_tmr (debug_ebreaku_o[i]),
            trigger_match_o_tmr (trigger_match_o[i]),
            pmp_addr_o_tmr (pmp_addr_o[i]),
            pmp_cfg_o_tmr (pmp_cfg_o[i]),
            priv_lvl_o_tmr (priv_lvl_o[i]),
            pc_if_i (pc_if_i),
            pc_id_i (pc_id_i),
            pc_ex_i (pc_ex_i),
            csr_save_if_i (csr_save_if_i),
            csr_save_id_i (csr_save_id_i),
            csr_save_ex_i (csr_save_ex_i),
            csr_restore_mret_i (csr_restore_mret_i),
            csr_restore_uret_i (csr_restore_uret_i),
            csr_restore_dret_i (csr_restore_dret_i),
            csr_cause_i (csr_cause_i),
            csr_save_cause_i (csr_save_cause_i),
            hwlp_start_i (hwlp_start_i),
            hwlp_end_i (hwlp_end_i),
            hwlp_cnt_i (hwlp_cnt_i),
            mhpmevent_minstret_i (mhpmevent_minstret_i),
            mhpmevent_load_i (mhpmevent_load_i),
            mhpmevent_store_i (mhpmevent_store_i),
            mhpmevent_jump_i (mhpmevent_jump_i),
            mhpmevent_branch_i (mhpmevent_branch_i),  
            mhpmevent_branch_taken_i (mhpmevent_branch_taken_i),
            mhpmevent_compressed_i (mhpmevent_compressed_i),
            mhpmevent_jr_stall_i (mhpmevent_jr_stall_i),
            mhpmevent_imiss_i (mhpmevent_imiss_i),
            mhpmevent_ld_stall_i (mhpmevent_ld_stall_i),
            mhpmevent_pipe_stall_i (mhpmevent_pipe_stall_i),
            apu_typeconflict_i (apu_typeconflict_i),
            apu_contention_i (apu_contention_i),
            apu_dep_i (apu_dep_i),
            apu_wb_i (apu_wb_i)
        )
    end

// 22 outputs

cv32e40p_voter voter_1 (
    .res1(fs_off_o_tmr[0]),
    .res2(fs_off_o_tmr[1]),
    .res3(fs_off_o_tmr[2]),
    .result_o(fs_off_o)
);

cv32e40p_voter voter_2 (
    .res1(m_irq_enable_o_tmr[0]),
    .res2(m_irq_enable_o_tmr[1]),
    .res3(m_irq_enable_o_tmr[2]),
    .result_o(m_irq_enable_o),
);

cv32e40p_voter voter_3 (
    .res1(u_irq_enable_o_tmr[0]),
    .res2(u_irq_enable_o_tmr[1]),
    .res3(u_irq_enable_o_tmr[2]),
    .result_o(u_irq_enable_o),
);

cv32e40p_voter voter_4 (
    .res1(sec_lvl_o_tmr[0]),
    .res2(sec_lvl_o_tmr[1]),
    .res3(sec_lvl_o_tmr[2]),
    .result_o(sec_lvl_o),
);

cv32e40p_voter voter_5 (
    .res1(debug_single_step_o_tmr[0]),
    .res2(debug_single_step_o_tmr[1]),
    .res3(debug_single_step_o_tmr[2]),
    .result_o(debug_single_step_o)
);

cv32e40p_voter voter_6 (
    .res1(debug_ebreakm_o_tmr[0]),
    .res2(debug_ebreakm_o_tmr[1]),
    .res3(debug_ebreakm_o_tmr[2]),
    .result_o(debug_ebreakm_o)
);

cv32e40p_voter voter_7 (
    .res1(debug_ebreaku_o_tmr[0]),
    .res2(debug_ebreaku_o_tmr[1]),
    .res3(debug_ebreaku_o_tmr[2]),
    .result_o(debug_ebreaku_o)
);

cv32e40p_voter voter_8 (
    .res1(trigger_match_o_tmr[0]),
    .res2(debug_ebreaku_o_tmr[1]),
    .res3(debug_ebreaku_o_tmr[2]),
    .result_o(debug_ebreaku_o)
);

cv32e40p_voter #(3) voter_9 (
    .res1(frm_o_tmr[0]),
    .res2(frm_o_tmr[1]),
    .res3(frm_o_tmr[2]),
    .result_o(frm_o)
);

cv32e40p_voter #(24) voter_10 (
    .res1(mtvec_o_tmr[0]),
    .res2(mtvec_o_tmr[1]),
    .res3(mtvec_o_tmr[2]),
    .result_o(mtvec_o)
);

cv32e40p_voter #(24) voter_11 (
    .res1(utvec_o_tmr[0]),
    .res2(utvec_o_tmr[1]),
    .res3(utvec_o_tmr[2]),
    .result_o(utvec_o)
);

cv32e40p_voter #(2) voter_12 (
    .res1(mtvec_mode_o_tmr[0]),
    .res2(mtvec_mode_o_tmr[1]),
    .res3(mtvec_mode_o_tmr[2]),
    .result_o(mtvec_mode_o)
);

cv32e40p_voter #(32) voter_13 (
    .res1(utvec_mode_o_tmr[0]),
    .res2(utvec_mode_o_tmr[1]),
    .res3(utvec_mode_o_tmr[2]),
    .result_o(utvec_mode_o)
);

cv32e40p_voter #(32) voter_14 (
    .res1(csr_rdata_o_tmr[0]),
    .res2(csr_rdata_o_tmr[1]),
    .res3(csr_rdata_o_tmr[2]),
    .result_o(csr_rdata_o)
);

cv32e40p_voter #(32) voter_15 (
    .res1(mie_bypass_o_tmr[0]),
    .res2(mie_bypass_o_tmr[1]),
    .res3(mie_bypass_o_tmr[2]),
    .result_o(mie_bypass_o)
);

cv32e40p_voter #(32) voter_16 (
    .res1(mepc_o_tmr[0]),
    .res2(mepc_o_tmr[1]),
    .res3(mepc_o_tmr[2]),
    .result_o(mepc_o)
);

cv32e40p_voter #(32) voter_17 (
    .res1(uepc_o_tmr[0]),
    .res2(uepc_o_tmr[1]),
    .res3(uepc_o_tmr[2]),
    .result_o(uepc_o)
);

cv32e40p_voter #(32) voter_18 (
    .res1(mcounteren_o_tmr[0]),
    .res2(mcounteren_o_tmr[1]),
    .res3(mcounteren_o_tmr[2]),
    .result_o(mcounteren_o)
);

cv32e40p_voter #(32) voter_19 (
    .res1(depc_o_tmr[0]),
    .res2(depc_o_tmr[1]),
    .res3(depc_o_tmr[2]),
    .result_o(depc_o)
);

cv32e40p_voter #(N_PMP_ENTRIES, 8) voter_20 (
    .res1(pmp_addr_o_tmr[0]),
    .res2(pmp_addr_o_tmr[1]),
    .res3(pmp_addr_o_tmr[2]),
    .result_o(pmp_addr_o)
);

cv32e40p_voter #(N_PMP_ENTRIES, 32) voter_21 (
    .res1(pmp_cfg_o_tmr[0]),
    .res2(pmp_cfg_o_tmr[1]),
    .res3(pmp_cfg_o_tmr[2]),
    .result_o(pmp_cfg_o)
);

cv32e40p_voter #(N_PMP_ENTRIES, 32) voter_22 (
    .res1(priv_lvl_o_tmr[0]),
    .res2(priv_lvl_o_tmr[1]),
    .res3(priv_lvl_o_tmr[2]),
    .result_o(priv_lvl_o)
);


endmodule





