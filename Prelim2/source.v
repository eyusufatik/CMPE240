`timescale 1ns / 1ns
module main(y, x2, x1, x0);

input x2, x1, x0;
output y;

wire x2x0;
wire x1x0;

and(x2x0, x2, x0);
and(x1x0, x1, !x0);

or(y, x2x0, x1x0);

endmodule