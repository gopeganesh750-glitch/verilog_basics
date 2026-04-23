module SR_Latch_NOR_tb;
     reg S, R;
     wire Q, Q_bar;
     
     SR_Latch_NOR uut(.S(S), .R(R), .Q(Q), .Q_bar(Q_bar));
     
     initial begin
     $monitor("Time=%0t | S=%b R=%b | Q=%b Q_bar=%b", $time, S, R, Q, Q_bar);
     
     //all possible combinations
     S = 0; R = 1; #10;  //reset
     S = 0; R = 0; #10;  //hold
     S = 1; R = 0; #10;  //set
     S = 0; R = 0; #10;  //hold
     S = 1; R = 1; #10;  //invalid
     S = 0; R = 0; #10;  //hold
     $finish;
  end      
endmodule