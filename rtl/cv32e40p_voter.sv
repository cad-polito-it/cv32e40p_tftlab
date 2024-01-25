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
        if (res1 == res2) begin
            result_o <= res1;
            faulty_o <= res3;
        end
        else if (res1 == res3 ) begin
            result_o <= res1;
            faulty_o <= res2;
		end
        else begin 
            result_o <= res2;
            faulty_o <= res1;
        end
    end
endmodule
