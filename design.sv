// Code your design here
module incrementing_flip_flop (
    input logic clk,
    input logic reset,
    output logic [31:0] q
);

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 0;
    end else begin
        q <= q + 1;
    end
end

endmodule