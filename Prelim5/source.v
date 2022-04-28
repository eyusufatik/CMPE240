`timescale 1ns / 1ns


module circuit(y, i, clk, rst);
    parameter ZERO0 = 3'b000, ZERO1 = 3'b001, ZERO2 = 3'b010;
    parameter ONE0 = 3'b011, ONE1 = 3'b100, ONE2 = 3'b101;

    reg [2:0] stateReg = 3'b000;
    reg [2:0] nextStateReg;
    
    output reg [0:0] y;
    input wire rst;
    input wire clk;
    input wire i;

    always@(i or stateReg) begin
        case(stateReg)
            ZERO0: begin
                if(i==0)begin
                    nextStateReg <= ZERO1;
                end
                else begin
                    nextStateReg <= ONE1;
                end
                y <= 0;
            end
            ZERO1: begin
                if(i==0)begin
                    nextStateReg <= ZERO2;
                end
                else begin
                    nextStateReg <= ONE1;
                end
                y <= 0;
            end
            ZERO2: begin
                if(i==0)begin
                    nextStateReg <= ZERO2;
                end
                else begin
                    nextStateReg <= ONE1;
                end
                y <= 1;
            end
            ONE0: begin
                if(i==0)begin
                    nextStateReg <= ZERO0;
                end
                else begin
                    nextStateReg <= ONE1;
                end
                y <= 0;
            end
            ONE1: begin
                if(i==0)begin
                    nextStateReg <= ZERO0;
                end
                else begin
                    nextStateReg <= ONE2;
                end
                y <= 0;
            end
            ONE2: begin
                if(i==0)begin
                    nextStateReg <= ZERO0;
                end
                else begin
                    nextStateReg <= ONE2;
                end
                y <= 1;
            end
        endcase
    end

    always@(posedge clk) begin
        if(rst) begin
		    stateReg <= ZERO0;
        end
        else begin
            stateReg <= nextStateReg;
        end
    end

    // wire s2 = stateReg[2];
    // wire s1 = stateReg[1];
    // wire s0 = stateReg[0];
    // // OUTPUT_PART //
    // input i;
    // output y;

    // wire s2_not;
    // not(s2_not, s2);

    // wire s1_not;
    // not(s1_not, s1);

    // wire s0_not;
    // not(s0_not, s0);

    // wire i_not;
    // not(i_not, i);

    // wire and1;
    // and(and1, s2_not, s1, s0_not, i_not);

    // wire and2;
    // and(and2, s2, s1_not, s0, i);

    // or(y, and1, and2);
    // // OUTPUT_PART //

    // // OTHER_PART //
    // wire and3;
    // and(and3, s2_not, s0_not, i);

    // wire and4;
    // and(and4, s1_not, i);

    // wire y2;
    // or(y2, and3, and4, s2, s1, s0);
    // // OTHER_PART //

    // // ANOTHER_PART //
    // wire and5;
    // and(and5, s2_not, s1, s0, i);

    // wire and6;
    // and(and6, s2, s1_not, i);

    // wire y3;
    // or(y3, and5, and6);
    // // ANOTHER_PART //

    // // ANOTHER_PART //
    // wire and7;
    // and(and7, s2_not, s1_not, s0);

    // wire and8;
    // and(and8, s2_not, s1, s0_not);

    // wire and9;
    // and(and9, s2_not, s0_not, i);

    // wire y4;
    // or(y4, and7, and8, and9);
endmodule