module full_adder(
     input A, B, Cin, 
     output FA_sum, FA_carry
     );

     assign FA_sum = A^B^Cin;
     assign FA_carry = A&B | (A^B)&Cin;
     endmodule
     
module CSA(
    input [3:0]A, B, C,
    output [3:0]sum, 
    output [3:0]carry,
    output [4:0]result,
    output cout
    );
    
    wire [3:0]FA_sum, FA_carry;
    
    full_adder FA0(A[0],B[0],C[0],FA_sum[0],FA_carry[0]);
    full_adder FA1(A[1],B[1],C[1],FA_sum[1],FA_carry[1]);
    full_adder FA2(A[2],B[2],C[2],FA_sum[2],FA_carry[2]);
    full_adder FA3(A[3],B[3],C[3],FA_sum[3],FA_carry[3]);
    
    assign sum = FA_sum;
    assign carry = FA_carry;
    
    wire [4:0]carry_shifted;
    
    assign carry_shifted = {FA_carry, 1'b0};
    
    wire c1, c2, c3, c4;
    
    wire [4:0]final_sum;
    
    full_adder dp0(FA_sum[0],carry_shifted[0],1'b0,final_sum[0],c1);
    full_adder dp1(FA_sum[1],carry_shifted[1],c1,final_sum[1],c2);
    full_adder dp2(FA_sum[2],carry_shifted[2],c2,final_sum[2],c3);
    full_adder dp3(FA_sum[3],carry_shifted[3],c3,final_sum[3],c4);
    full_adder dp4(1'b0,carry_shifted[4],c4,final_sum[4],cout);
    
    assign result = final_sum; 
    
endmodule