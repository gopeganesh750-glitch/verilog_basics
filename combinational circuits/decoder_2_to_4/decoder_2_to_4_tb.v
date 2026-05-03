module decoder_2_to_4_tb;
       reg A, B, E;
       wire [3:0]D;
       
       decoder_2_to_4 uut(.A(A), .B(B), .E(E), .D(D));
       
       initial begin
       $monitor("t = %0t  |  A = %b  B = %b  E = %b  |  D = %b", $time, A, B, E, D);
       
       // Enable OFF
       A = 0; B = 0; E = 0; #10;
       A = 0; B = 1; E = 0; #10;
       A = 1; B = 0; E = 0; #10;
       A = 1; B = 1; E = 0; #10;
       
       // Enable ON
       A = 0; B = 0; E = 1; #10;   
       A = 0; B = 1; E = 1; #10;
       A = 1; B = 0; E = 1; #10;
       A = 1; B = 1; E = 1; #10; 
       $finish;
       end    
endmodule