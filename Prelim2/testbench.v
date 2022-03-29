`timescale 1ns / 1ns
module TestBench();

reg [2:0] x;
wire y;

main main(y, x[2], x[1], x[0]);

initial begin
	$dumpfile("Football Robot.vcd");
	$dumpvars(0, y, x);
	
	x = 3'b000;
	#20
	if(y != 0) begin
		$display("wrong output");
	end
	x = 3'b001;
	#20
	if(y != 0) begin
		$display("wrong output");
	end
	x = 3'b010;
	#20
	if(y != 1) begin
		$display("wrong output");
	end
	x = 3'b011;
	#20
	if(y != 0) begin
		$display("wrong output");
	end
	x = 3'b100;
	#20
	if(y != 0) begin
		$display("wrong output");
	end
	x = 3'b101;
	#20
	if(y != 1) begin
		$display("wrong output");
	end
	x = 3'b110;
	#20
	if(y != 1) begin
		$display("wrong output");
	end
	x = 3'b111;
	#20
	if(y != 1) begin
		$display("wrong output");
	end
	
	$finish;
end

endmodule
