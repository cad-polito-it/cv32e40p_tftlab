module cv32e40p_voter
(
    input logic res1,
    input logic res2,
    input logic res3,

    output logic faulty_o,
    output logic result_o
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
