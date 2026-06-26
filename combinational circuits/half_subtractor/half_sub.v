module half_subtractor(
    input A,
    input B,
    output D,
    output Bo
    );
    
    wire A_bar;
    
    xor g1(D, A, B);
    not g2(A_bar, A);
    and g3(Bo, A_bar, B);
endmodule
