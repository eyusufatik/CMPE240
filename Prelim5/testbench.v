`timescale 1ns/1ns
module FSM_Testbench();

wire [0:0] z;
reg w;
reg rst;
reg clk;
parameter inputsequence1 = 32'b10101000000000101011110000011110;
parameter inputsequence2 = 32'b01001010001010010100101001111101;
parameter inputsequence3 = 32'b11111101010100000100011100111011;
parameter inputsequence4 = 32'b01010101000000100011011100001100;
parameter inputsequence5 = 32'b01100000001101000110011110010001;

integer i;

circuit fsm(z, w, clk, rst);

initial begin
    $dumpfile("TimingDiagram.vcd");
    $dumpvars(0, z, w, rst, clk, fsm);
    
    rst = 1;
    w = 0;
    #40;
    rst = 0;
    
    for (i=31; i>0; i--) begin
        w = inputsequence1[i];
        #40;
    end
    for (i=31; i>0; i--) begin
        w = inputsequence2[i];
        #40;
    end
    for (i=31; i>0; i--) begin
        w = inputsequence3[i];
        #40;
    end
    for (i=31; i>0; i--) begin
        w = inputsequence4[i];
        #40;
    end
    for (i=31; i>0; i--) begin
        w = inputsequence5[i];
        #40;
    end

    
    $finish;
end

always begin	
	clk = 0;
	#20;
	clk = 1;
	#20;
end

endmodule
