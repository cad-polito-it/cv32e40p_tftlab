module cv32e40p_voter_generic
#(
    parameter WIDTH = 32
)
(
    input logic [WIDTH-1:0] res1,
    input logic [WIDTH-1:0] res2,
    input logic [WIDTH-1:0] res3,

	output logic [WIDTH-1:0] result_o,
    output logic faulty_o
);

    // behavioral implementation
   always_comb begin
		faulty_o <= 1'b0;
        if (res1 == res2) begin
			if (res1 != res3) begin
				faulty_o <= 1'b1;
			end
			result_o <= res1;
        end
        else begin
			faulty_o <= 1'b1;
			result_o <= res3;	
		end
	end
endmodule

