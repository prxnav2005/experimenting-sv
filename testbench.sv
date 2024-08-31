// Code your testbench here
// or browse Examples
module tb_ff;

    bit clk_tb;
    bit reset_tb;
    logic [31:0] q_tb;

    incrementing_flip_flop dut (
        .clk(clk_tb),
        .reset(reset_tb),
        .q(q_tb)
    );

    always begin
        clk_tb = 0;
        #5;
        clk_tb = 1;
        #5;
    end

    initial begin
        reset_tb = 1;
        #10;
        reset_tb = 0;
        #10;
        #20;
        #10;
        $finish;
    end

endmodule