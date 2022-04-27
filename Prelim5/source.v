`timescale 1ns / 1ns


module circuit(y, s2, s1, s0, i);


    // OUTPUT_PART //
    input s2, s1, s0, i;
    output y;

    wire s2_not;
    not(s2_not, s2);

    wire s1_not;
    not(s1_not, s1);

    wire s0_not;
    not(s0_not, s0);

    wire i_not;
    not(i_not, i);

    wire and1;
    and(and1, s2_not, s1, s0_not, i_not);

    wire and2;
    and(and2, s2, s1_not, s0, i);

    or(y, and1, and2);
    // OUTPUT_PART //

    // OTHER_PART //
    wire and3;
    and(and3, s2_not, s0_not, i);

    wire and4;
    and(and4, s1_not, i);

    wire y2;
    or(y2, and3, and4, s2, s1, s0);
    // OTHER_PART //

    
endmodule