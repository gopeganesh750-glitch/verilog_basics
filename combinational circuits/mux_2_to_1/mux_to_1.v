module mux_2_to_1(
    input A,
    input B,
    input So,
    output Y
    );
    
    wire w1, w2, w3;
    not g1(w1,So);
    and g2(w2, w1, A);
    and g3(w3, So, B);
    or g4(Y, w2, w3);       
endmodule