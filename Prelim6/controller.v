`timescale 1ns / 1ns


module Controller(clk, start, completed, i, select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2, A_i_bigger, i_smaller);
input wire clk, start, i_smaller, A_i_bigger;
output reg completed;
input wire [3:0] i;

output reg select1, select2, set_i, i_incr, set_max, set_max_i, clr_max_i, A_R0, A_R1, A_R2;

parameter S0 = 3'b000,
            S1 = 3'b001,
            S2 = 3'b010,
            S3 = 3'b011,
            S4 = 3'b100,
            S5 = 3'b101;


reg [2:0] state = S0;
reg [2:0] nextState;


always@(state, start) begin
    case(state) 
        S0: begin
            if(start) begin
                nextState <= S1;
            end
            else begin
                nextState <= S0;
            end
            completed <= 0;
            select1 <= 0;
            select2 <= 0;
            set_i <= 0;
            i_incr <= 0;
            set_max <= 0;
            set_max_i <= 0;
            clr_max_i <= 0;
            A_R0 <= 0;
            A_R1 <= 0;
            A_R2 <= 0;

        end
        S1: begin
            nextState <= S2;

            completed <= 0;
            select1 <= 0;
            select2 <= 1;
            set_i <= 1;
            i_incr <= 0;
            set_max <= 1;
            set_max_i <= 0;
            clr_max_i <= 1;
            A_R0 <= 0;
            A_R1 <= 0;
            A_R2 <= 0;
        end
        S2: begin
            if(i_smaller) begin
                nextState <= S3;
            end
            else begin
                nextState <= S5;
            end


            completed <= 0;
            select1 <= 0;
            select2 <= 0;
            set_i <= 0;
            i_incr <= 1;
            set_max <= 0;
            set_max_i <= 0;
            clr_max_i <= 0;
            A_R0 <= 0;
            A_R1 <= 0;
            A_R2 <= 0;
        end
        S3: begin
            if(A_i_bigger) begin
                nextState <= S4;
            end
            else begin
                nextState <= S2;
            end

            completed <= 0;
            select1 <= 0;
            select2 <= 0;
            set_i <= 0;
            i_incr <= 0;
            set_max <= 0;
            set_max_i <= 0;
            clr_max_i <= 0;
            A_R0 <= i[0];
            A_R1 <= i[1];
            A_R2 <= i[2];
        end
        S4: begin
            nextState <= S2;

            completed <= 0;
            select1 <= 1;
            select2 <= 0;
            set_i <= 0;
            i_incr <= 0;
            set_max <= 1;
            set_max_i <= 1;
            clr_max_i <= 0;
            A_R0 <= 0;
            A_R1 <= 0;
            A_R2 <= 0;
        end
        S5: begin
            nextState <= S0;

            completed <= 1;
            select1 <= 0;
            select2 <= 0;
            set_i <= 0;
            i_incr <= 0;
            set_max <= 0;
            set_max_i <= 0;
            clr_max_i <= 0;
            A_R0 <= 0;
            A_R1 <= 0;
            A_R2 <= 0;
        end
    endcase
end

always@(posedge clk) begin
        
    state <= nextState;
        
end


endmodule