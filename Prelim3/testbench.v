`timescale 1ns / 1ns

module TestBench();

reg [4:0] x;
wire y;

circuit circuit(y, x[4], x[3], x[2], x[1], x[0]);

initial begin
	$dumpfile("Alarm.vcd");
	$dumpvars(0, y, x);

    x = 5'b00000;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00001;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00010;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00011;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00100;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00101;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00110;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b00111;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01000;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01001;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01010;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01011;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01100;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01101;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01110;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b01111;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10000;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10001;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10010;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10011;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10100;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10101;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10110;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b10111;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11000;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11001;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11010;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11011;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11100;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11101;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11110;
    #20
    if(y != 0) begin
        $display("wrong output at %d", x);
    end
    x = 5'b11111;
    #20
    if(y != 1) begin
        $display("wrong output at %d", x);
    end
end
endmodule