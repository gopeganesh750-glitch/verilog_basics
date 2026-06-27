module full_sub_Test();
       reg A, B, Bin;
       wire D;
       wire Bo;
       
       Full_Subtractor DUT(.A(A), .B(B), .Bin(Bin), .Diff(D), .Bo(Bo));
       
       initial 
          begin
          $dumpfile("Full_Subtractor.vcd");
          $dumpvars(0, full_sub_Test);
          
          $monitor($time, "A = %b  B = %b  Bin = %b | D = %b  Bo = %b", A, B, Bin, D, Bo);
          
          A = 0;  B = 0;  Bin = 0;
          
          #5        
  
          A = 0;  B = 0;  Bin = 1;
          
          #10
          
          A = 0;  B = 1;  Bin = 0;
          
          #15
          
          A = 0;  B = 1;  Bin = 1;
          
          #20
          
          A = 1;  B = 0;  Bin = 0;
          
          #25
          
          A = 1;  B = 0;  Bin = 1;
          
          #30
          
          A = 1;  B = 1;  Bin = 0;
          
          #35
          
          A = 1;  B = 1;  Bin = 1;
          
          #40
          
          $finish;   
          end
endmodule
