`timescale 1ns / 1ns

module Datapath(clk, start_values, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller, max_index, i);

output reg [3:0] max_index;
output reg A_i_bigger, i_smaller;
input wire clk, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2;
input wire [63:0] start_values;


wire signed  [7:0] array[0:7];
assign {array[0], array[1], array[2], array[3], array[4], array[5], array[6], array[7]} = start_values;

reg signed [7:0] max;
output reg [3:0] i;

reg[2:0] tempIndex;
reg[3:0] from_incr;

always@(negedge clk) begin
    tempIndex <= {A_R2, A_R1, A_R0};


    A_i_bigger <= (array[tempIndex] > max) || (array[tempIndex] == max);
    if(i < 4'b1000) begin
        i_smaller <= 1'b1;
    end
    else begin
        i_smaller <= 1'b0;
    end



    if(i_incr) begin
        from_incr = i+ 4'b0001;
    end
    else begin
        from_incr = i;
    end

    if(set_max) begin
        if(select1) begin
            max <= array[tempIndex];
        end
        else begin
            max <= -128;
        end
    end


    if(set_i) begin
        if(select2) begin
            i <= 0;
        end
        else begin
            i <= from_incr;
        end
    end


    if(set_max_i) begin
        max_index <= i;
    end

    if(clr_max_i) begin
        max_index <= 0;
    end

end



endmodule