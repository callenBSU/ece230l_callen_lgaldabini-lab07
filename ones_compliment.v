module ones_compliment(
    input [3:0] A, B, 
    output [3:0] oc
);
wire [3:0] first_add;
wire [4:0] carry;
wire [4:0] carry2;
wire [4:0] carry_over;
assign carry[0] = 1'b0;
assign carry2[0] = 1'b0;
assign carry_over[4:1] = 4'b0000;

    genvar i;

    generate
        for(i = 0; i < 4; i = i + 1) begin : add_loop
            full_adder full_adder_inst(
                .A(A[i]),
                .B(B[i]),
                .C(carry[i]),
                .Y(first_add[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

assign carry_over[0] = carry[4];

    genvar k;

    generate
        for(k = 0; k < 4; k = k + 1) begin : add_loop2
            full_adder full_adder_inst2(
                .A(first_add[k]),
                .B(carry_over[k]),
                .C(carry2[k]),
                .Y(oc[k]),
                .Cout(carry2[k+1])
            );
        end
    endgenerate

endmodule