module full_adder(
       input A,
       input B,
       input Cin,
       output Carry,
       output Sum);
       
       assign Sum = A ^ B ^ Cin;
       assign Carry = ((A & B) | ((A ^ B) & Cin)) ;  
endmodule 

module RCA_G(
    input [3:0]A,
    input [3:0]B,
    output [3:0]S,
    output Cout
    );
    
    wire C1, C2, C3;
    
    full_adder FA0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(S[0]), .Carry(C1));
    full_adder FA1(.A(A[1]), .B(B[1]), .Cin(C1), .Sum(S[1]), .Carry(C2));
    full_adder FA2(.A(A[2]), .B(B[2]), .Cin(C2), .Sum(S[2]), .Carry(C3));
    full_adder FA3(.A(A[3]), .B(B[3]), .Cin(C3), .Sum(S[3]), .Carry(Cout));
endmodule
