module cv32e40p_alu_tmr
  import cv32e40p_pkg::*;
(
    input logic               clk,
    input logic               rst_n,
    input logic               enable_i,
    input alu_opcode_e        operator_i,
    input logic        [31:0] operand_a_i,
    input logic        [31:0] operand_b_i,
    input logic        [31:0] operand_c_i,

    input logic [1:0] vector_mode_i,
    input logic [4:0] bmask_a_i,
    input logic [4:0] bmask_b_i,
    input logic [1:0] imm_vec_ext_i,

    input logic       is_clpx_i,
    input logic       is_subrot_i,
    input logic [1:0] clpx_shift_i,

    output logic [31:0] result_o,
    output logic        comparison_result_o,

    output logic ready_o,
    input  logic ex_ready_i
);

logic [31:0]  result_o_1, result_o_2, result_o_3, result_o_faulty, result_o_data;
logic         cmp_result_1, cmp_result_2, cmp_result_3, comparison_result_o_faulty, comparison_result_o_data;
logic         ready_1, ready_2, ready_3, ready_o_faulty, ready_o_data;

cv32e40p_alu alu_1 (
      .clk        (clk),
      .rst_n      (rst_n),
      .enable_i   (enable_i),
      .operator_i (operator_i),
      .operand_a_i(operand_a_i),
      .operand_b_i(operand_b_i),
      .operand_c_i(operand_c_i),

      .vector_mode_i(vector_mode_i),
      .bmask_a_i    (bmask_a_i),
      .bmask_b_i    (bmask_b_i),
      .imm_vec_ext_i(imm_vec_ext_i),

      .is_clpx_i   (is_clpx_i),
      .is_subrot_i (is_subrot_i),
      .clpx_shift_i(clpx_shift_i),

      .result_o           (result_o_1),
      .comparison_result_o(cmp_result_1),

      .ready_o   (ready_1),
      .ex_ready_i(ex_ready_i)
  );

cv32e40p_alu alu_2 (
      .clk        (clk),
      .rst_n      (rst_n),
      .enable_i   (enable_i),
      .operator_i (operator_i),
      .operand_a_i(operand_a_i),
      .operand_b_i(operand_b_i),
      .operand_c_i(operand_c_i),

      .vector_mode_i(vector_mode_i),
      .bmask_a_i    (bmask_a_i),
      .bmask_b_i    (bmask_b_i),
      .imm_vec_ext_i(imm_vec_ext_i),

      .is_clpx_i   (is_clpx_i),
      .is_subrot_i (is_subrot_i),
      .clpx_shift_i(clpx_shift_i),

      .result_o           (result_o_2),
      .comparison_result_o(cmp_result_2),

      .ready_o   (ready_2),
      .ex_ready_i(ex_ready_i)
  );

cv32e40p_alu alu_3 (
      .clk        (clk),
      .rst_n      (rst_n),
      .enable_i   (enable_i),
      .operator_i (operator_i),
      .operand_a_i(operand_a_i),
      .operand_b_i(operand_b_i),
      .operand_c_i(operand_c_i),

      .vector_mode_i(vector_mode_i),
      .bmask_a_i    (bmask_a_i),
      .bmask_b_i    (bmask_b_i),
      .imm_vec_ext_i(imm_vec_ext_i),

      .is_clpx_i   (is_clpx_i),
      .is_subrot_i (is_subrot_i),
      .clpx_shift_i(clpx_shift_i),

      .result_o           (result_o_3),
      .comparison_result_o(cmp_result_3),

      .ready_o   (ready_3),
      .ex_ready_i(ex_ready_i)
  );

  cv32e40p_voter_generic #(32) voter_1 (
    .res1(result_o_1),
    .res2(result_o_2),
    .res3(result_o_3),
    .result_o(result_o_data),
    .faulty_o(result_o_faulty)
  );

  cv32e40p_voter voter_2 (
    .res1(cmp_result_1),
    .res2(cmp_result_2),
    .res3(cmp_result_3),
    .result_o(comparison_result_o_data),
	.faulty_o(comparison_result_o_faulty)
  );

  cv32e40p_voter voter_3 (
    .res1(ready_1),
    .res2(ready_2),
    .res3(ready_3),
    .result_o(ready_o_data),
	.faulty_o(ready_o_faulty)
  );

  always_comb begin
        if (ALU_FAULTY_SIM == 0) begin
            result_o = result_o_data;
			comparison_result_o = comparison_result_o_data;
			ready_o = ready_o_data;
		end
        else if (ALU_FAULTY_SIM == 1) begin
            result_o = result_o_faulty;
			comparison_result_o = comparison_result_o_faulty;
			ready_o = ready_o_faulty;
		end
   end
 
endmodule
