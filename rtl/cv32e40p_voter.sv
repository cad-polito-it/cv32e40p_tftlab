module cv32e40p_voter
(
    input logic [31:0] res1,
    input logic [31:0] res2,
    input logic [31:0] res3,

    output logic [31:0] result_o
);

    // behavioral implementation
    always_comb begin
        if(res1 == res2) begin
            result_o <= res1;
        else
            result_o <= res3;
    
        end
    end

endmodule