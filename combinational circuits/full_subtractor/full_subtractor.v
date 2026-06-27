module Full_Subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bo
    );
    
    wire A_bar, W1, W2, W3; 
    
    xor g1(Diff, A, B, Bin);
    not g2 (A_bar, A);
    and g3(W1, A_bar, Bin);
    and g4(W2, B, Bin);
    and g5(W3, A_bar, B);
    or g6(Bo, W1, W2, W3);
    
endmodule