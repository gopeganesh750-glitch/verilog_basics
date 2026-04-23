//Testbench for basic logic gates

module basic_gates_tb;
    reg a, b;
    wire and_y, or_y, nand_y, nor_y, xor_y, xnor_y;
    wire not_y;

    //Instantiation 
    and_gate  u1(.a(a), .b(b), .y(and_y));
    or_gate   u2(.a(a), .b(b), .y(or_y));
    nand_gate u3(.a(a), .b(b), .y(nand_y));
    nor_gate  u4(.a(a), .b(b), .y(nor_y));
    xor_gate  u5(.a(a), .b(b), .y(xor_y));
    xnor_gate u6(.a(a), .b(b), .y(xnor_y));
    not_gate  u7(.a(a), .y(not_y));

    initial begin
       $monitor("a=%b b=%b | AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b NOT=%b",
       a, b, and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_y);

    //Applying all input combinations
       a = 0; b = 0; #10; 
       a = 0; b = 1; #10;
       a = 1; b = 0; #10;
       a = 1; b = 1; #10;
       $finish;
    end
endmodule