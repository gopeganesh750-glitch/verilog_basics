module decoder_2_to_4(
    input A,
    input B,
    input E,
    output [3:0]D
    );
    
    assign D[0] = E & (~A) & (~B);
    assign D[1] = E & (~A) & B;
    assign D[2] = E & A & (~B);
    assign D[3] = E & A & B;
endmodule
