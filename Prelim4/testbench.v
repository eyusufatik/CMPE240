`timescale 1ns / 1ns

module TestBench();

reg [0:0] clk; 
reg [1:0] x;
wire [3:0] y;

main main(y[0], y[1], y[2], y[3], clk, x[1], x[0]);

initial begin
	$dumpfile("multip.vcd");
	$dumpvars(0, y, x, clk);

    x = 2'b00;
    clk = 0;
    #20
    if(y != 4'b0000) begin
        
    end
    x = 2'b00;
    clk=1;
    #20
    if(y != 4'b0000) begin
        $display("wrong output at %d", x);
    end
    x = 2'b01;
    clk = 0;
    #20
    if(y != 4'b0000) begin
        $display("wrong output at %d", x);
    end
    x = 2'b01;
    clk=1;
    #20
    if(y != 4'b0011) begin
        $display("wrong output at %d", x);
    end
    x = 2'b10;
    clk = 0;
    #20
    if(y != 4'b0011) begin
        $display("wrong output at %d", x);
    end
    x = 2'b10;
    clk=1;
    #20
    if(y != 4'b0110) begin
        $display("wrong output at %d", x);
    end
    x = 2'b11;
    clk = 0;
    #20
    if(y != 4'b0110) begin
        $display("wrong output at %d", x);
    end
    x = 2'b11;
    clk=1;
    #20
    if(y != 4'b1001) begin
        $display("wrong output at %d", x);
    end
    
end
endmodule