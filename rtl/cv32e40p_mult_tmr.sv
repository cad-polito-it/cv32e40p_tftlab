module cv32e40p_mult_tmr
  import cv32e40p_pkg::*;
(
    input logic clk,
    input logic rst_n,

    input logic        enable_i,
    input mul_opcode_e operator_i,

    // integer and short multiplier
    input logic       short_subword_i,
    input logic [1:0] short_signed_i,

    input logic [31:0] op_a_i,
    input logic [31:0] op_b_i,
    input logic [31:0] op_c_i,

    input logic [4:0] imm_i,


    // dot multiplier
    input logic [ 1:0] dot_signed_i,
    input logic [31:0] dot_op_a_i,
    input logic [31:0] dot_op_b_i,
    input logic [31:0] dot_op_c_i,
    input logic        is_clpx_i,
    input logic [ 1:0] clpx_shift_i,
    input logic        clpx_img_i,

    output logic [31:0] result_o,

    output logic multicycle_o,
    output logic mulh_active_o,
    output logic ready_o,
    input  logic ex_ready_i
);

parameter NUM_INSTANCES = 3;

logic [31:0] result_o_data, result_o_faulty;
logic multicycle_o_data, multicycle_o_faulty;
logic mulh_active_o_data, mulh_active_o_faulty;
logic ready_o_data, ready_o_faulty;

logic [31:0] result_o_tmr[NUM_INSTANCES];
logic multicycle_o_tmr[NUM_INSTANCES];
logic mulh_active_o_tmr[NUM_INSTANCES];
logic ready_o_tmr[NUM_INSTANCES];

genvar i;
  for (i = 0; i < NUM_INSTANCES; i++) begin : inst_loop
    cv32e40p_mult inst (
      .clk(clk),
      .rst_n(rst_n),
      .enable_i(enable_i),
      .operator_i(operator_i),
      .short_subword_i(short_subword_i),
      .short_signed_i(short_signed_i),
      .op_a_i(op_a_i),
      .op_b_i(op_b_i),
      .op_c_i(op_c_i),
      .imm_i(imm_i),
      .dot_signed_i(dot_signed_i),
      .dot_op_a_i(dot_op_a_i),
      .dot_op_b_i(dot_op_b_i),
      .dot_op_c_i(dot_op_c_i),
      .is_clpx_i(is_clpx_i),
      .clpx_shift_i(clpx_shift_i),
      .clpx_img_i(clpx_img_i),
      .result_o(result_o_tmr[i]),
      .multicycle_o(multicycle_o_tmr[i]),
      .mulh_active_o(mulh_active_o_tmr[i]),
      .ready_o(ready_o_tmr[i]),
      .ex_ready_i(ex_ready_i)
    );
  end

  cv32e40p_voter_generic #(32) voter_1 (
    .res1(result_o_tmr[0]),
    .res2(result_o_tmr[1]),
    .res3(result_o_tmr[2]),
    .result_o(result_o_data),
	.faulty_o(result_o_faulty)
  );

  cv32e40p_voter voter_2 (
    .res1(multicycle_o_tmr[0]),
    .res2(multicycle_o_tmr[1]),
    .res3(multicycle_o_tmr[2]),
    .result_o(multicycle_o_data),
	.faulty_o(multicycle_o_faulty)
  );

  cv32e40p_voter voter_3 (
    .res1(mulh_active_o_tmr[0]),
    .res2(mulh_active_o_tmr[1]),
    .res3(mulh_active_o_tmr[2]),
    .result_o(mulh_active_o_data),
	.faulty_o(mulh_active_o_faulty)
  );

  cv32e40p_voter voter_4 (
    .res1(ready_o_tmr[0]),
    .res2(ready_o_tmr[1]),
    .res3(ready_o_tmr[2]),
    .result_o(ready_o_data),
	.faulty_o(ready_o_faulty)
  );

	always_comb begin
        if (MULT_FAULTY_SIM == 0) begin
            result_o = result_o_data;
			multicycle_o = multicycle_o_data;
			mulh_active_o = mulh_active_o_data;
			ready_o = ready_o_data;
		end
        else if (MULT_FAULTY_SIM == 1) begin
            result_o = result_o_faulty;
			multicycle_o = multicycle_o_faulty;
			mulh_active_o = mulh_active_o_faulty;
			ready_o = ready_o_faulty;
		end
   end
endmodule
