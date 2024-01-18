module cv32e40p_voter
(
    input logic res1,
    input logic res2,
    input logic res3,

    output logic result_o
);

    // behavioral implementation
    always_comb begin
        if(res1 == res2) begin
            result_o <= res1;
        end
        else begin 
            result_o <= res3;
        end
    end

endmodule