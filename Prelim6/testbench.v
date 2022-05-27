`timescale 1ns/1ns
module Testbench();


reg start, reset, clk;

wire completed;

reg signed[63:0] start_values;

wire[3:0] max_index;
wire[3:0] i;

wire select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller;

Datapath dp(clk, start_values, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller, max_index, i);
Controller ct(clk, start, completed, i, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller);

initial begin
    $dumpfile("TimingDiagram.vcd");
    $dumpvars(0,dp, ct, start,clk,completed, start_values, max_index, i, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller);

    start_values <= 64'b0011100101100011100101001010110110101010001010100000100010100100;
    start = 1'b1;

    #40;
    start = 1'b0;
    #1000;

    $finish;
end


always begin	
	clk = 0;
	#20;
	clk = 1;
	#20;
end
endmodule