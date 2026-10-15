module half_sub(
    input A, B, 
    output Borrow, Y
);
    assign Y = A ^ B;
    assign Borrow = ~A & B;

endmodule