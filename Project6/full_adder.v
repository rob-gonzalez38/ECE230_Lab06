module full_adder (
    input A,B,Cin, 
    output Y,Cout
);

    assign Y = B ^ Cin ^ A;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule