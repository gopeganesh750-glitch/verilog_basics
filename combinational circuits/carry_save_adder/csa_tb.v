module CSA_TB();
      reg [3:0]A, B, C;
      wire [3:0]sum;
      wire [3:0]carry;
      wire [4:0]result;
      wire cout;
      
      CSA DUT(.A(A), .B(B), .C(C), .sum(sum), .carry(carry), .result(result), .cout(cout));
      
      initial
         begin 
           $dumpfile("CSA.vcd");
           $dumpvars(0, CSA_TB);
           $monitor($time, "A=%b B=%b C=%b | sum=%b carry=%b result=%b cout=%b", A, B, C, sum, carry, result, cout);
           
           A=4'b0000; B=4'b0000; C=4'b0000;
           #10 A=4'b0001; B=4'b0010; C=4'b0000;
           #7 A=4'b1000; B=4'b0011; C=4'b0010;
           #5 A=4'b0001; B=4'b0100; C=4'b0111;
           #15 A=4'b1000; B=4'b0100; C=4'b0001;
           #10
           $finish;
           end
     
endmodule