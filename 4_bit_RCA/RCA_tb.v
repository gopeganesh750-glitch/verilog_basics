module RCA_TEST();
       reg [3:0]A, B;
       wire [3:0]S;
       wire C;
       
       RCA_G DUT(.A(A), .B(B), .S(S), .Cout(C));
       
       
       initial 
          begin 
          $dumpfile("RCA_G.vcd");
          $dumpvars(0, RCA_TEST);
          $monitor($time, "A = %b  B = %b |  S = %b  C = %b ", A, B, S, C);
          
          A = 4'b0000; B = 4'b0101;
          #5 
          A = 4'b0111; B = 4'b0011;
          #10
          A = 4'b1000; B = 4'b0100;
          #15
          A = 4'b1111; B = 4'b0001;
          #25
          $finish;
       end    
endmodule
