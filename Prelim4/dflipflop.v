module DFlipFlop(i, o, clk);

    input input; 
    input clk;
    output o;
    always @(posedge clk) 
    begin
    o <= input; 
    end 

endmodule 