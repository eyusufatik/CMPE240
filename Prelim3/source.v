`timescale 1ns / 1ns

<<<<<<< HEAD
module main(y, a, b, c, d, e);
=======
module circuit(y, a, b, c, d, e);
>>>>>>> 0c02a447f5053ffb8b485816bae6025c2acdad8f

    input a, b, c, d, e;
    output y;

    wire d_not;
    wire e_not;

<<<<<<< HEAD
    not(d_not, d)
    not(e_not, e)

    wire e_and_d_not;
    and(e_and_d_not, e_not, d_not);
=======
    not(d_not, d);
    not(e_not, e);

    wire e_and_d_not;
    and(e_and_d_not, e, d_not);
>>>>>>> 0c02a447f5053ffb8b485816bae6025c2acdad8f

    wire e_not_and_d;
    and(e_not_and_d, e_not, d);

    wire e_and_d_not__not;
    not(e_and_d_not__not, e_and_d_not);

    wire e_not_and_d__not;
    not(e_not_and_d__not, e_not_and_d);

    /*
        i0 -> d
        i1 -> e_not_and_d
        i2 -> e_and_d_not
        i3 -> e_and_d_not
        i4 -> e_and_d_not__not
        i5 -> e_and_d_not
        i6 -> d_not
        i7 -> e_not_and_d__not

        a,b,c -> a,b,c
    */
<<<<<<< HEAD

=======
    mux8to1 mux8to1(y, d, e_not_and_d, e_and_d_not, e_and_d_not, e_and_d_not__not, e_and_d_not, d_not, e_not_and_d__not, {a,b,c});
>>>>>>> 0c02a447f5053ffb8b485816bae6025c2acdad8f

endmodule