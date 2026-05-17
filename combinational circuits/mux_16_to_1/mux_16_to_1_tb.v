module mux16_to_1_TB;
     reg [15:0]A;
     reg [3:0]S;
     wire W;
     
     mux16_to_1 UUT (.in(A), .sel(S), .out(W));
     
     initial 
        begin 
        $monitor("Time=%0t | A=%b S=%b | W=%b", $time, A, S, W);
         
        A = 16'b1010110011110001;
        S = 4'b0000; #10;   // out = in[0]
        S = 4'b0001; #10;   // out = in[1]
        S = 4'b0010; #10;   // out = in[2]
        S = 4'b0011; #10;   // out = in[3]

        S = 4'b0100; #10;   // out = in[4]
        S = 4'b0101; #10;   // out = in[5]
        S = 4'b0110; #10;   // out = in[6]
        S = 4'b0111; #10;   // out = in[7]

        S = 4'b1000; #10;   // out = in[8]
        S = 4'b1001; #10;   // out = in[9]
        S = 4'b1010; #10;   // out = in[10]
        S = 4'b1011; #10;   // out = in[11]

        S = 4'b1100; #10;   // out = in[12]
        S = 4'b1101; #10;   // out = in[13]
        S = 4'b1110; #10;   // out = in[14]
        S = 4'b1111; #10;   // out = in[15]

    $finish;
    end      
endmodule
