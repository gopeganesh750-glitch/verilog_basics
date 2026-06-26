module half_subtractor_tb();
       reg A, B;
       wire Diff;
       wire Bo;

       half_subtractor DUT(.A(A), .B(B), .D(Diff), .Bo(Bo));

       initial 
          begin       
            $dumpfile("half_subtractor.vcd");
            $dumpvars(0, half_subtractor_tb);
            
            $monitor("$time=%0t | A = %b  B = %b | Diff = %b  Bo = %b", $time, A, B, Diff, Bo);
            
            A = 1'b0;  B = 1'b0;
            
            #10
            
            A = 1'b0;  B = 1'b1;
            
            #15
            
            A = 1'b1;  B = 1'b0;
            
            #20 
            
            A = 1'b1;  B = 1'b1;
            
            #25
            
            $finish;    
       end   
endmodule
       