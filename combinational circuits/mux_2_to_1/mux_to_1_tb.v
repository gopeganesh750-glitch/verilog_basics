module mux_2_to_1_tb;
   reg a, b, s;
   wire y;
   
   mux_2_to_1 uut(.A(a), .B(b), .So(s), .Y(y));
   
   initial begin 
   $monitor("t=%0t | a=%b b=%b s=%b | y=%b", $time, a, b, s, y);
   
   a=0; b=0; s=0; #10;
   a=0; b=0; s=1; #10;
   a=0; b=1; s=0; #10;
   a=0; b=1; s=1; #10;
   a=1; b=0; s=0; #10;
   a=1; b=0; s=1; #10;
   a=1; b=1; s=0; #10;
   a=1; b=1; s=1; #10;
   $finish;
   end 
endmodule