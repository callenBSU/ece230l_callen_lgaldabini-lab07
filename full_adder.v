module full_adder(
    input A, B, C,
    output Cout, Y
);
    //i could also do this with xor A ^ B ^ C 
    assign Y = (~A & ~B & C) + (~A & B & ~C) + (A & ~B & ~C) + (A & B & C); 
    assign Cout = (A & B) + (A & C) + (B & C);  

endmodule 