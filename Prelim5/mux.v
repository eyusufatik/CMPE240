module mux8to1(out, I0, I1, I2, I3, I4, I5, I6, I7, S);

output reg[0:0] out;

input I0, I1, I2, I3, I4, I5, I6, I7;

input [2:0] S;

always @(I0, I1, I2, I3, I4, I5, I6, I7) begin
    case (S)
        3'b000: out <= I0;
        3'b001: out <= I1;
        3'b010: out <= I2;
        3'b011: out <= I3;
        3'b100: out <= I4;
        3'b101: out <= I5;
        3'b110: out <= I6;
        3'b111: out <= I7;
    endcase


end
endmodule