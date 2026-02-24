module adder(
    // Declare your A/B inputs
input wire A, B,

    // Declare Y output
output Y,

    // Declare carry output
output carry,

);

    // Enter logic equation here
assign Y = A ^ B;
assign carry = A & B;

endmodule