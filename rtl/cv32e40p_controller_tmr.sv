module cv32e40p_controller_tmr import cv32e40p_pkg::*;
#(
  parameter COREV_CLUSTER = 0,
  parameter COREV_PULP    = 0,
  parameter FPU           = 0
)
(
  input  logic        clk,                        // Gated clock
  input  logic        clk_ungated_i,              // Ungated clock
  input  logic        rst_n,

  input  logic        fetch_enable_i,             // Start the decoding
  output logic        ctrl_busy_o,                // Core is busy processing instructions
  output logic        is_decoding_o,              // Core is in decoding state
  input  logic        is_fetch_failed_i,

  // decoder related signals
  output logic        deassert_we_o,              // deassert write enable for next instruction

  input  logic        illegal_insn_i,             // decoder encountered an invalid instruction
  input  logic        ecall_insn_i,               // decoder encountered an ecall instruction
  input  logic        mret_insn_i,                // decoder encountered an mret instruction
  input  logic        uret_insn_i,                // decoder encountered an uret instruction

  input  logic        dret_insn_i,                // decoder encountered an dret instruction

  input  logic        mret_dec_i,
  input  logic        uret_dec_i,
  input  logic        dret_dec_i,

  input  logic        wfi_i,                      // decoder wants to execute a WFI
  input  logic        ebrk_insn_i,                // decoder encountered an ebreak instruction
  input  logic        fencei_insn_i,              // decoder encountered an fence.i instruction
  input  logic        csr_status_i,               // decoder encountered an csr status instruction

  output logic        hwlp_mask_o,                // prevent writes on the hwloop instructions in case interrupt are taken

  // from IF/ID pipeline
  input  logic        instr_valid_i,              // instruction coming from IF/ID pipeline is valid

  // from prefetcher
  output logic        instr_req_o,                // Start fetching instructions

  // to prefetcher
  output logic        pc_set_o,                   // jump to address set by pc_mux
  output logic [3:0]  pc_mux_o,                   // Selector in the Fetch stage to select the rigth PC (normal, jump ...)
  output logic [2:0]  exc_pc_mux_o,               // Selects target PC for exception
  output logic [1:0]  trap_addr_mux_o,            // Selects trap address base

  // HWLoop signls
  input  logic [31:0]       pc_id_i,

  // from hwloop_regs
  input  logic [1:0] [31:0] hwlp_start_addr_i,
  input  logic [1:0] [31:0] hwlp_end_addr_i,
  input  logic [1:0] [31:0] hwlp_counter_i,

  // to hwloop_regs
  output logic [1:0]        hwlp_dec_cnt_o,

  output logic              hwlp_jump_o,
  output logic [31:0]       hwlp_targ_addr_o,

  // LSU
  input  logic        data_req_ex_i,              // data memory access is currently performed in EX stage
  input  logic        data_we_ex_i,
  input  logic        data_misaligned_i,
  input  logic        data_load_event_i,
  input  logic        data_err_i,
  output logic        data_err_ack_o,

  // from ALU
  input  logic        mult_multicycle_i,          // multiplier is taken multiple cycles and uses op c as storage

  // APU dependency checks
  input  logic        apu_en_i,
  input  logic        apu_read_dep_i,
  input  logic        apu_read_dep_for_jalr_i,
  input  logic        apu_write_dep_i,

  output logic        apu_stall_o,

  // jump/branch signals
  input  logic        branch_taken_ex_i,          // branch taken signal from EX ALU
  input  logic [1:0]  ctrl_transfer_insn_in_id_i,               // jump is being calculated in ALU
  input  logic [1:0]  ctrl_transfer_insn_in_dec_i,              // jump is being calculated in ALU

  // Interrupt Controller Signals
  input  logic        irq_req_ctrl_i,
  input  logic        irq_sec_ctrl_i,
  input  logic [4:0]  irq_id_ctrl_i,
  input  logic        irq_wu_ctrl_i,
  input  PrivLvl_t    current_priv_lvl_i,

  output logic        irq_ack_o,
  output logic [4:0]  irq_id_o,

  output logic [4:0]  exc_cause_o,

  // Debug Signal
  output logic         debug_mode_o,
  output logic [2:0]   debug_cause_o,
  output logic         debug_csr_save_o,
  input  logic         debug_req_i,
  input  logic         debug_single_step_i,
  input  logic         debug_ebreakm_i,
  input  logic         debug_ebreaku_i,
  input  logic         trigger_match_i,
  output logic         debug_p_elw_no_sleep_o,
  output logic         debug_wfi_no_sleep_o,
  output logic         debug_havereset_o,
  output logic         debug_running_o,
  output logic         debug_halted_o,

  // Wakeup Signal
  output logic        wake_from_sleep_o,

  output logic        csr_save_if_o,
  output logic        csr_save_id_o,
  output logic        csr_save_ex_o,
  output logic [5:0]  csr_cause_o,
  output logic        csr_irq_sec_o,
  output logic        csr_restore_mret_id_o,
  output logic        csr_restore_uret_id_o,

  output logic        csr_restore_dret_id_o,

  output logic        csr_save_cause_o,


  // Regfile target
  input  logic        regfile_we_id_i,            // currently decoded we enable
  input  logic [5:0]  regfile_alu_waddr_id_i,     // currently decoded target address

  // Forwarding signals from regfile
  input  logic        regfile_we_ex_i,            // FW: write enable from  EX stage
  input  logic [5:0]  regfile_waddr_ex_i,         // FW: write address from EX stage
  input  logic        regfile_we_wb_i,            // FW: write enable from  WB stage
  input  logic        regfile_alu_we_fw_i,        // FW: ALU/MUL write enable from  EX stage

  // forwarding signals
  output logic [1:0]  operand_a_fw_mux_sel_o,     // regfile ra data selector form ID stage
  output logic [1:0]  operand_b_fw_mux_sel_o,     // regfile rb data selector form ID stage
  output logic [1:0]  operand_c_fw_mux_sel_o,     // regfile rc data selector form ID stage

  // forwarding detection signals
  input logic         reg_d_ex_is_reg_a_i,
  input logic         reg_d_ex_is_reg_b_i,
  input logic         reg_d_ex_is_reg_c_i,
  input logic         reg_d_wb_is_reg_a_i,
  input logic         reg_d_wb_is_reg_b_i,
  input logic         reg_d_wb_is_reg_c_i,
  input logic         reg_d_alu_is_reg_a_i,
  input logic         reg_d_alu_is_reg_b_i,
  input logic         reg_d_alu_is_reg_c_i,

  // stall signals
  output logic        halt_if_o,
  output logic        halt_id_o,

  output logic        misaligned_stall_o,
  output logic        jr_stall_o,
  output logic        load_stall_o,

  input  logic        id_ready_i,                 // ID stage is ready
  input  logic        id_valid_i,                 // ID stage is valid

  input  logic        ex_valid_i,                 // EX stage is done

  input  logic        wb_ready_i,                 // WB stage is ready

  // Performance Counters
  output logic        perf_pipeline_stall_o       // stall due to cv.elw extra cycles
);

  parameter NUM_INSTANCES = 3;

  logic        ctrl_busy_o_tmr[NUM_INSTANCES],               
  logic        is_decoding_o_tmr[NUM_INSTANCES],             
  logic        deassert_we_o_tmr[NUM_INSTANCES],             
  logic        hwlp_mask_o_tmr[NUM_INSTANCES],              
  logic        instr_req_o_tmr[NUM_INSTANCES],              
  logic        pc_set_o_tmr[NUM_INSTANCES],                 
  logic [3:0]  pc_mux_o_tmr[NUM_INSTANCES],                 
  logic [2:0]  exc_pc_mux_o_tmr[NUM_INSTANCES],             
  logic [1:0]  trap_addr_mux_o_tmr[NUM_INSTANCES],          
  logic [1:0]  hwlp_dec_cnt_o_tmr[NUM_INSTANCES],
  logic        hwlp_jump_o_tmr[NUM_INSTANCES],
  logic [31:0] hwlp_targ_addr_o_tmr[NUM_INSTANCES],
  logic        data_err_ack_o_tmr[NUM_INSTANCES],
  logic        apu_stall_o_tmr[NUM_INSTANCES],
  logic        irq_ack_o_tmr[NUM_INSTANCES],
  logic [4:0]  irq_id_o_tmr[NUM_INSTANCES],
  logic [4:0]  exc_cause_o_tmr[NUM_INSTANCES],
  logic        debug_mode_o_tmr[NUM_INSTANCES],
  logic [2:0]  debug_cause_o_tmr[NUM_INSTANCES],
  logic        debug_csr_save_o_tmr[NUM_INSTANCES],
  logic        debug_p_elw_no_sleep_o_tmr[NUM_INSTANCES],
  logic        debug_wfi_no_sleep_o_tmr[NUM_INSTANCES],
  logic        debug_havereset_o_tmr[NUM_INSTANCES],
  logic        debug_running_o_tmr[NUM_INSTANCES],
  logic        debug_halted_o_tmr[NUM_INSTANCES],
  logic        wake_from_sleep_o_tmr[NUM_INSTANCES],
  logic        csr_save_if_o_tmr[NUM_INSTANCES],
  logic        csr_save_id_o_tmr[NUM_INSTANCES],
  logic        csr_save_ex_o_tmr[NUM_INSTANCES],
  logic [5:0]  csr_cause_o_tmr[NUM_INSTANCES],
  logic        csr_irq_sec_o_tmr[NUM_INSTANCES],
  logic        csr_restore_mret_id_o_tmr[NUM_INSTANCES],
  logic        csr_restore_uret_id_o_tmr[NUM_INSTANCES],
  logic        csr_restore_dret_id_o_tmr[NUM_INSTANCES],
  logic        csr_save_cause_o_tmr[NUM_INSTANCES],
  logic [1:0]  operand_a_fw_mux_sel_o_tmr[NUM_INSTANCES],
  logic [1:0]  operand_b_fw_mux_sel_o_tmr[NUM_INSTANCES],
  logic [1:0]  operand_c_fw_mux_sel_o_tmr[NUM_INSTANCES],
  logic        halt_if_o_tmr[NUM_INSTANCES],
  logic        halt_id_o_tmr[NUM_INSTANCES],
  logic        misaligned_stall_o_tmr[NUM_INSTANCES],
  logic        jr_stall_o_tmr[NUM_INSTANCES],
  logic        load_stall_o_tmr[NUM_INSTANCES],
  logic        perf_pipeline_stall_o_tmr[NUM_INSTANCES];

 genvar i;
  for (i = 0; i < NUM_INSTANCES; i++) begin : inst_loop
    cv32e40p_controller #(
    .COREV_CLUSTER(0),
    .COREV_PULP(0),
    .FPU(0)
    ) inst (
        .clk(clk),
        .clk_ungated_i(clk_ungated_i),
        .rst_n(rst_n),
        .fetch_enable_i(fetch_enable_i),
        .ctrl_busy_o(ctrl_busy_o_tmr[i]),
        .is_decoding_o(is_decoding_o_tmr[i]),
        .is_fetch_failed_i(is_fetch_failed_i),
        .deassert_we_o(deassert_we_o_tmr[i]),
        .illegal_insn_i(illegal_insn_i),
        .ecall_insn_i(ecall_insn_i),
        .mret_insn_i(mret_insn_i),
        .uret_insn_i(uret_insn_i),
        .dret_insn_i(dret_insn_i),
        .mret_dec_i(mret_dec_i),
        .uret_dec_i(uret_dec_i),
        .dret_dec_i(dret_dec_i),
        .wfi_i(wfi_i),
        .ebrk_insn_i(ebrk_insn_i),
        .fencei_insn_i(fencei_insn_i),
        .csr_status_i(csr_status_i),
        .hwlp_mask_o(hwlp_mask_o_tmr[i]),
        .instr_valid_i(instr_valid_i),
        .instr_req_o(instr_req_o_tmr[i]),
        .pc_set_o(pc_set_o_tmr[i]),
        .pc_mux_o(pc_mux_o_tmr[i]),
        .exc_pc_mux_o(exc_pc_mux_o_tmr[i]),
        .trap_addr_mux_o(trap_addr_mux_o_tmr[i]),
        .pc_id_i(pc_id_i),
        .hwlp_start_addr_i(hwlp_start_addr_i),
        .hwlp_end_addr_i(hwlp_end_addr_i),
        .hwlp_counter_i(hwlp_counter_i),
        .hwlp_dec_cnt_o(hwlp_dec_cnt_o_tmr[i]),
        .hwlp_jump_o(hwlp_jump_o_tmr[i]),
        .hwlp_targ_addr_o(hwlp_targ_addr_o_tmr[i]),
        .data_req_ex_i(data_req_ex_i),
        .data_we_ex_i(data_we_ex_i),
        .data_misaligned_i(data_misaligned_i),
        .data_load_event_i(data_load_event_i),
        .data_err_i(data_err_i),
        .data_err_ack_o(data_err_ack_o_tmr[i]),
        .mult_multicycle_i(mult_multicycle_i),
        .apu_en_i(apu_en_i),
        .apu_read_dep_i(apu_read_dep_i),
        .apu_read_dep_for_jalr_i(apu_read_dep_for_jalr_i),
        .apu_write_dep_i(apu_write_dep_i),
        .apu_stall_o(apu_stall_o_tmr[i]),
        .branch_taken_ex_i(branch_taken_ex_i),
        .ctrl_transfer_insn_in_id_i(ctrl_transfer_insn_in_id_i),
        .ctrl_transfer_insn_in_dec_i(ctrl_transfer_insn_in_dec_i),
        .irq_req_ctrl_i(irq_req_ctrl_i),
        .irq_sec_ctrl_i(irq_sec_ctrl_i),
        .irq_id_ctrl_i(irq_id_ctrl_i),
        .irq_wu_ctrl_i(irq_wu_ctrl_i),
        .current_priv_lvl_i(current_priv_lvl_i),
        .irq_ack_o(irq_ack_o_tmr[i]),
        .irq_id_o(irq_id_o_tmr[i]),
        .exc_cause_o(exc_cause_o_tmr[i]),
        .debug_mode_o(debug_mode_o_tmr[i]),
        .debug_cause_o(debug_cause_o_tmr[i]),
        .debug_csr_save_o(debug_csr_save_o_tmr[i]),
        .debug_req_i(debug_req_i),
        .debug_single_step_i(debug_single_step_i),
        .debug_ebreakm_i(debug_ebreakm_i),
        .debug_ebreaku_i(debug_ebreaku_i),
        .trigger_match_i(trigger_match_i),
        .debug_p_elw_no_sleep_o(debug_p_elw_no_sleep_o_tmr[i]),
        .debug_wfi_no_sleep_o(debug_wfi_no_sleep_o_tmr[i]),
        .debug_havereset_o(debug_havereset_o_tmr[i]),
        .debug_running_o(debug_running_o_tmr[i]),
        .debug_halted_o(debug_halted_o_tmr[i]),
        .wake_from_sleep_o(wake_from_sleep_o_tmr[i]),
        .csr_save_if_o(csr_save_if_o_tmr[i]),
        .csr_save_id_o(csr_save_id_o_tmr[i]),
        .csr_save_ex_o(csr_save_ex_o_tmr[i]),
        .csr_cause_o(csr_cause_o_tmr[i]),
        .csr_irq_sec_o(csr_irq_sec_o_tmr[i]),
        .csr_restore_mret_id_o(csr_restore_mret_id_o_tmr[i]),
        .csr_restore_uret_id_o(csr_restore_uret_id_o_tmr[i]),
        .csr_restore_dret_id_o(csr_restore_dret_id_o_tmr[i]),
        .csr_save_cause_o(csr_save_cause_o_tmr[i]),
        .regfile_we_id_i(regfile_we_id_i),
        .regfile_alu_waddr_id_i(regfile_alu_waddr_id_i),
        .regfile_we_ex_i(regfile_we_ex_i),
        .regfile_waddr_ex_i(regfile_waddr_ex_i),
        .regfile_we_wb_i(regfile_we_wb_i),
        .regfile_alu_we_fw_i(regfile_alu_we_fw_i),
        .operand_a_fw_mux_sel_o(operand_a_fw_mux_sel_o_tmr),
        .operand_b_fw_mux_sel_o(operand_b_fw_mux_sel_o_tmr),
        .operand_c_fw_mux_sel_o(operand_c_fw_mux_sel_o_tmr),
        .reg_d_ex_is_reg_a_i(reg_d_ex_is_reg_a_i),
        .reg_d_ex_is_reg_b_i(reg_d_ex_is_reg_b_i),
        .reg_d_ex_is_reg_c_i(reg_d_ex_is_reg_c_i),
        .reg_d_wb_is_reg_a_i(reg_d_wb_is_reg_a_i),
        .reg_d_wb_is_reg_b_i(reg_d_wb_is_reg_b_i),
        .reg_d_wb_is_reg_c_i(reg_d_wb_is_reg_c_i),
        .reg_d_alu_is_reg_a_i(reg_d_alu_is_reg_a_i),
        .reg_d_alu_is_reg_b_i(reg_d_alu_is_reg_b_i),
        .reg_d_alu_is_reg_c_i(reg_d_alu_is_reg_c_i),
        .halt_if_o(halt_if_o_tmr[i]),
        .halt_id_o(halt_id_o_tmr[i]),
        .misaligned_stall_o(misaligned_stall_o_tmr[i]),
        .jr_stall_o(jr_stall_o_tmr[i]),
        .load_stall_o(load_stall_o_tmr[i]),
        .id_ready_i(id_ready_i),
        .id_valid_i(id_valid_i),
        .ex_valid_i(ex_valid_i),
        .wb_ready_i(wb_ready_i),
        .perf_pipeline_stall_o(perf_pipeline_stall_o_tmr[i])
  );
  end

  cv32e40p_voter voter_ctrl_busy_o (
    .res1(ctrl_busy_o_tmr[0]),
    .res2(ctrl_busy_o_tmr[1]),
    .res3(ctrl_busy_o_tmr[2]),
    .result_o(ctrl_busy_o)
  );

  cv32e40p_voter voter_is_decoding_o (
    .res1(is_decoding_o_tmr[0]),
    .res2(is_decoding_o_tmr[1]),
    .res3(is_decoding_o_tmr[2]),
    .result_o(is_decoding_o)
  );

  cv32e40p_voter voter_deassert_we_o (
    .res1(deassert_we_o_tmr[0]),
    .res2(deassert_we_o_tmr[1]),
    .res3(deassert_we_o_tmr[2]),
    .result_o(deassert_we_o)
  );
  
  cv32e40p_voter voter_hwlp_mask_o (
    .res1(hwlp_mask_o_tmr[0]),
    .res2(hwlp_mask_o_tmr[1]),
    .res3(hwlp_mask_o_tmr[2]),
    .result_o(hwlp_mask_o)
  );

  cv32e40p_voter voter_instr_req_o (
    .res1(instr_req_o_tmr[0]),
    .res2(instr_req_o_tmr[1]),
    .res3(instr_req_o_tmr[2]),
    .result_o(instr_req_o)
  );

  cv32e40p_voter voter_pc_set_o (
    .res1(pc_set_o_tmr[0]),
    .res2(pc_set_o_tmr[1]),
    .res3(pc_set_o_tmr[2]),
    .result_o(pc_set_o)
  );

  cv32e40p_voter voter_hwlp_jump_o (
    .res1(hwlp_jump_o_tmr[0]),
    .res2(hwlp_jump_o_tmr[1]),
    .res3(hwlp_jump_o_tmr[2]),
    .result_o(hwlp_jump_o)
  );

  cv32e40p_voter voter_data_err_ack_o (
    .res1(data_err_ack_o_tmr[0]),
    .res2(data_err_ack_o_tmr[1]),
    .res3(data_err_ack_o_tmr[2]),
    .result_o(data_err_ack_o)
  );

  cv32e40p_voter voter_apu_stall_o (
    .res1(apu_stall_o_tmr[0]),
    .res2(apu_stall_o_tmr[1]),
    .res3(apu_stall_o_tmr[2]),
    .result_o(apu_stall_o)
  );

  cv32e40p_voter voter_irq_ack_o (
    .res1(irq_ack_o_tmr[0]),
    .res2(irq_ack_o_tmr[1]),
    .res3(irq_ack_o_tmr[2]),
    .result_o(irq_ack_o)
  );

  cv32e40p_voter voter_debug_mode_o (
    .res1(debug_mode_o_tmr[0]),
    .res2(debug_mode_o_tmr[1]),
    .res3(debug_mode_o_tmr[2]),
    .result_o(debug_mode_o)
  );

  cv32e40p_voter voter_debug_csr_save_o (
    .res1(debug_csr_save_o_tmr[0]),
    .res2(debug_csr_save_o_tmr[1]),
    .res3(debug_csr_save_o_tmr[2]),
    .result_o(debug_csr_save_o)
  );

  cv32e40p_voter voter_debug_p_elw_no_sleep_o (
    .res1(debug_p_elw_no_sleep_o_tmr[0]),
    .res2(debug_p_elw_no_sleep_o_tmr[1]),
    .res3(debug_p_elw_no_sleep_o_tmr[2]),
    .result_o(debug_p_elw_no_sleep_o)
  );

  cv32e40p_voter voter_debug_wfi_no_sleep_o (
    .res1(debug_wfi_no_sleep_o_tmr[0]),
    .res2(debug_wfi_no_sleep_o_tmr[1]),
    .res3(debug_wfi_no_sleep_o_tmr[2]),
    .result_o(debug_wfi_no_sleep_o)
  );

  cv32e40p_voter voter_debug_havereset_o (
    .res1(debug_havereset_o_tmr[0]),
    .res2(debug_havereset_o_tmr[1]),
    .res3(debug_havereset_o_tmr[2]),
    .result_o(debug_havereset_o)
  );

  cv32e40p_voter voter_debug_running_o (
    .res1(debug_running_o_tmr[0]),
    .res2(debug_running_o_tmr[1]),
    .res3(debug_running_o_tmr[2]),
    .result_o(debug_running_o)
  );  

  cv32e40p_voter voter_debug_halted_o (
    .res1(debug_halted_o_tmr[0]),
    .res2(debug_halted_o_tmr[1]),
    .res3(debug_halted_o_tmr[2]),
    .result_o(debug_halted_o)
  );  

  cv32e40p_voter voter_wake_from_sleep_o (
    .res1(wake_from_sleep_o_tmr[0]),
    .res2(wake_from_sleep_o_tmr[1]),
    .res3(wake_from_sleep_o_tmr[2]),
    .result_o(wake_from_sleep_o)
  ); 

  cv32e40p_voter voter_csr_save_if_o (
    .res1(csr_save_if_o_tmr[0]),
    .res2(csr_save_if_o_tmr[1]),
    .res3(csr_save_if_o_tmr[2]),
    .result_o(csr_save_if_o)
  ); 

  cv32e40p_voter voter_csr_save_id_o (
    .res1(csr_save_id_o_tmr[0]),
    .res2(csr_save_id_o_tmr[1]),
    .res3(csr_save_id_o_tmr[2]),
    .result_o(csr_save_id_o)
  ); 

  cv32e40p_voter voter_csr_save_ex_o (
    .res1(csr_save_ex_o_tmr[0]),
    .res2(csr_save_ex_o_tmr[1]),
    .res3(csr_save_ex_o_tmr[2]),
    .result_o(csr_save_ex_o)
  ); 

  cv32e40p_voter voter_csr_irq_sec_o (
    .res1(csr_irq_sec_o_tmr[0]),
    .res2(csr_irq_sec_o_tmr[1]),
    .res3(csr_irq_sec_o_tmr[2]),
    .result_o(csr_irq_sec_o)
  ); 

  cv32e40p_voter voter_csr_restore_mret_id_o (
    .res1(csr_restore_mret_id_o_tmr[0]),
    .res2(csr_restore_mret_id_o_tmr[1]),
    .res3(csr_restore_mret_id_o_tmr[2]),
    .result_o(csr_restore_mret_id_o)
  ); 

  cv32e40p_voter voter_csr_restore_uret_id_o (
    .res1(csr_restore_uret_id_o_tmr[0]),
    .res2(csr_restore_uret_id_o_tmr[1]),
    .res3(csr_restore_uret_id_o_tmr[2]),
    .result_o(csr_restore_uret_id_o)
  ); 

  cv32e40p_voter voter_csr_restore_dret_id_o (
    .res1(csr_restore_dret_id_o_tmr[0]),
    .res2(csr_restore_dret_id_o_tmr[1]),
    .res3(csr_restore_dret_id_o_tmr[2]),
    .result_o(csr_restore_dret_id_o)
  ); 

  cv32e40p_voter voter_csr_save_cause_o (
    .res1(csr_save_cause_o_tmr[0]),
    .res2(csr_save_cause_o_tmr[1]),
    .res3(csr_save_cause_o_tmr[2]),
    .result_o(csr_save_cause_o)
  ); 

  cv32e40p_voter voter_halt_if_o (
    .res1(halt_if_o_tmr[0]),
    .res2(halt_if_o_tmr[1]),
    .res3(halt_if_o_tmr[2]),
    .result_o(halt_if_o)
  ); 

  cv32e40p_voter voter_halt_id_o (
    .res1(halt_id_o_tmr[0]),
    .res2(halt_id_o_tmr[1]),
    .res3(halt_id_o_tmr[2]),
    .result_o(halt_id_o)
  );  

  cv32e40p_voter voter_misaligned_stall_o (
    .res1(misaligned_stall_o_tmr[0]),
    .res2(misaligned_stall_o_tmr[1]),
    .res3(misaligned_stall_o_tmr[2]),
    .result_o(misaligned_stall_o)
  );

  cv32e40p_voter voter_jr_stall_o (
    .res1(jr_stall_o_tmr[0]),
    .res2(jr_stall_o_tmr[1]),
    .res3(jr_stall_o_tmr[2]),
    .result_o(jr_stall_o)
  );

  cv32e40p_voter voter_load_stall_o (
    .res1(load_stall_o_tmr[0]),
    .res2(load_stall_o_tmr[1]),
    .res3(load_stall_o_tmr[2]),
    .result_o(load_stall_o)
  );

  cv32e40p_voter voter_perf_pipeline_stall_o (
    .res1(perf_pipeline_stall_o_tmr[0]),
    .res2(perf_pipeline_stall_o_tmr[1]),
    .res3(perf_pipeline_stall_o_tmr[2]),
    .result_o(perf_pipeline_stall_o)
  );

  cv32e40p_voter_generic #(4) voter_pc_mux_o (
    .res1(pc_mux_o_tmr[0]),
    .res2(pc_mux_o_tmr[1]),
    .res3(pc_mux_o_tmr[2]),
    .result_o(pc_mux_o)
  );

  cv32e40p_voter_generic #(3) voter_exc_pc_mux_o (
    .res1(exc_pc_mux_o_tmr[0]),
    .res2(exc_pc_mux_o_tmr[1]),
    .res3(exc_pc_mux_o_tmr[2]),
    .result_o(exc_pc_mux_o)
  );

  cv32e40p_voter_generic #(2) voter_trap_addr_mux_o (
    .res1(trap_addr_mux_o_tmr[0]),
    .res2(trap_addr_mux_o_tmr[1]),
    .res3(trap_addr_mux_o_tmr[2]),
    .result_o(trap_addr_mux_o)
  );

  cv32e40p_voter_generic #(2) voter_hwlp_dec_cnt_o (
    .res1(hwlp_dec_cnt_o_tmr[0]),
    .res2(hwlp_dec_cnt_o_tmr[1]),
    .res3(hwlp_dec_cnt_o_tmr[2]),
    .result_o(hwlp_dec_cnt_o)
  );

  cv32e40p_voter_generic #(32) voter_hwlp_targ_addr_o (
    .res1(hwlp_targ_addr_o_tmr[0]),
    .res2(hwlp_targ_addr_o_tmr[1]),
    .res3(hwlp_targ_addr_o_tmr[2]),
    .result_o(hwlp_targ_addr_o)
  );

  cv32e40p_voter_generic #(5) voter_irq_id_o (
    .res1(irq_id_o_tmr[0]),
    .res2(irq_id_o_tmr[1]),
    .res3(irq_id_o_tmr[2]),
    .result_o(irq_id_o)
  );

  cv32e40p_voter_generic #(5) voter_exc_cause_o (
    .res1(exc_cause_o_tmr[0]),
    .res2(exc_cause_o_tmr[1]),
    .res3(exc_cause_o_tmr[2]),
    .result_o(exc_cause_o)
  );

  cv32e40p_voter_generic #(5) voter_debug_cause_o (
    .res1(debug_cause_o_tmr[0]),
    .res2(debug_cause_o_tmr[1]),
    .res3(debug_cause_o_tmr[2]),
    .result_o(debug_cause_o)
  );

  cv32e40p_voter_generic #(5) voter_csr_cause_o (
    .res1(csr_cause_o_tmr[0]),
    .res2(csr_cause_o_tmr[1]),
    .res3(csr_cause_o_tmr[2]),
    .result_o(csr_cause_o)
  );

  cv32e40p_voter_generic #(5) voter_operand_a_fw_mux_sel_o (
    .res1(operand_a_fw_mux_sel_o_tmr[0]),
    .res2(operand_a_fw_mux_sel_o_tmr[1]),
    .res3(operand_a_fw_mux_sel_o_tmr[2]),
    .result_o(operand_a_fw_mux_sel_o)
  );

  cv32e40p_voter_generic #(5) voter_operand_b_fw_mux_sel_o (
    .res1(operand_b_fw_mux_sel_o_tmr[0]),
    .res2(operand_b_fw_mux_sel_o_tmr[1]),
    .res3(operand_b_fw_mux_sel_o_tmr[2]),
    .result_o(operand_b_fw_mux_sel_o)
  );

    cv32e40p_voter_generic #(5) voter_operand_c_fw_mux_sel_o (
    .res1(operand_c_fw_mux_sel_o_tmr[0]),
    .res2(operand_c_fw_mux_sel_o_tmr[1]),
    .res3(operand_c_fw_mux_sel_o_tmr[2]),
    .result_o(operand_c_fw_mux_sel_o)
  );

  endmodule