module cv32e40p_alu_voter
(
    input logic [31:0] 	result_1, 
    input logic [31:0] 	result_2, 
    input logic [31:0] 	result_3,

	input logic 		cmp_result_1, 
	input logic 		cmp_result_2,
	input logic 		cmp_result_3,

	input logic 		ready_1, 
	input logic 		ready_2, 
	input logic 		ready_3,

	output logic [31:0] result,
	output logic 		cmp_result,
	output logic 		ready,

	output logic 		faulty_o_1,
	output logic 		faulty_o_2,
	output logic 		faulty_o_3
);

  cv32e40p_voter_generic #(32) voter_1 (
    .res1(result_1),
    .res2(result_2),
    .res3(result_3),
    .result_o(result),
    .faulty_o(faulty_o_1)
  );

  cv32e40p_voter voter_2 (
    .res1(cmp_result_1),
    .res2(cmp_result_2),
    .res3(cmp_result_3),
    .result_o(cmp_result),
	.faulty_o(faulty_o_2)
  );

  cv32e40p_voter voter_3 (
    .res1(ready_1),
    .res2(ready_2),
    .res3(ready_3),
    .result_o(ready),
	.faulty_o(faulty_o_3)
  );
 
endmodule
