module D_FF_TB();
     reg D, clock;
     wire Q;
     
     D_FF DUT(.D(D), .clock(clock), .Q(Q));
     
     initial 
        begin 
         clock=1'b0;
         forever #5 clock=~clock;
        end
        
     initial
        begin 
         $monitor("t=%0t | D=%b clock=%b | Q=%b", $time, D, clock, Q);

         D=0;  
         
         #4 D=1; 
         #7 D=0; 
         #10 D=1; 
         #8 D=0; 
         #14 D=1; 
         #20 $finish;
         end     
endmodule