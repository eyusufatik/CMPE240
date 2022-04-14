module DFlipFlop(d, clk, clear, q, q_not); 
    input d, clk, clear; 
    output reg q, q_not; 
    always@(posedge clk) 
    begin
        if(clear== 1) begin
            q <= 0;
            q_not <= 1;
        end else begin 
            q <= d; 
            q_not = !d;  
        end
    end 
endmodule