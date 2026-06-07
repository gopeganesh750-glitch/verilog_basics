module D_FF(
    input D, 
    input clock,
    output reg Q);
    
    always @(posedge clock)
         Q <= D;
endmodule
