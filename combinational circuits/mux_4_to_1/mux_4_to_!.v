module mux_4_to_1(
    input A, B, C, D,
    input [1:0]S,
    output reg Y
    );
    
    always @(*)
    begin
        if(S == 2'b00)
        Y=A; 
        
        else if(S == 2'b01)
        Y=B;
        
        else if(S == 2'b10)
        Y=C;
        
        else
        
        Y=D;
    end
endmodule

