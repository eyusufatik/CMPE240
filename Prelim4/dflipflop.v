module DFlipFlop(d, clk, clear, q, q_not); 
input d, clk, clear; 
output reg q, q_not; 
always@(posedge clk) 
begin
if(clear== 1)
q <= 0;
q_not <= 1;
else 
q <= d; 
q_not = !d; 
end 
endmodule