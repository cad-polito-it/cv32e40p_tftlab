module cv32e40p_voter_generic
#(
    parameter WIDTH = 32
)
(
    input logic [WIDTH-1:0] res1,
    input logic [WIDTH-1:0] res2,
    input logic [WIDTH-1:0] res3,

    output logic [WIDTH-1:0] result_o
);

    // behavioral implementation
    always_comb begin
        if (res1 == res2) begin
            result_o <= res1;
        else
            result_o <= res3;
        end
    end

endmodule
