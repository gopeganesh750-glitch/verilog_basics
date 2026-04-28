module mux_4_to_1_tb;
reg a, b, c, d;
reg [1:0]s;
wire y;

mux_4_to_1 uut(.A(a), .B(b), .C(c), .D(d), .S(s), .Y(y));

initial begin 
$monitor("t=%0t | a=%b b=%b c=%b d=%b s=%b | y=%b", $time, a, b, c, d, s, y);
a=0; b=0; c=0; d=0; s=2'b00; #10;
a=1; b=0; c=0; d=0; s=2'b00; #10;

a=0; b=0; c=0; d=0; s=2'b01; #10;
a=0; b=1; c=0; d=0; s=2'b01; #10;

a=0; b=0; c=0; d=0; s=2'b10; #10;
a=0; b=0; c=1; d=0; s=2'b10; #10;

a=0; b=0; c=0; d=0; s=2'b11; #10;
a=0; b=0; c=0; d=1; s=2'b11; #10;

$finish;
end

endmodule