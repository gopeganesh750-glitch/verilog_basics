module full_adder_tb;
      reg a, b, cin;
      wire s, co;
      
      full_adder uut(.A(a), .B(b), .S(s), .Cin(cin), .Co(co));
      
      initial begin
      $dumpfile("full_adder.vcd");
      $dumpvars(0, full_adder_tb);
      $monitor("a=%b b=%b cin=%b | s=%b co=%b", a, b , cin, s, co);

      //All possible combinations
      a=0; b=0; cin=0; #10;
      a=0; b=0; cin=1; #10;
      a=0; b=1; cin=0; #10;
      a=0; b=1; cin=1; #10;
      a=1; b=0; cin=0; #10;
      a=1; b=0; cin=1; #10;
      a=1; b=1; cin=0; #10;
      a=1; b=1; cin=1; #10;
      $finish;
      
 end
endmodule
