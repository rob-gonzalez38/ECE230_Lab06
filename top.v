// Implement top level module
module top(
    input  wire [7:0] sw,
    output wire [5:0] led
);

// Stairway light
    light u_light (
        .downstairs (sw[0]),
        .upstairs (sw[1]),
        .stair_light(led[0])
    );

// 1-bit adder (half adder)
    adder u_adder (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );

// 2-bit adder using two full adders
    wire c1;

// LSB full adder: Cin = 0
    full_adder fa0 (
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(c1)
    );

// MSB full adder: Cin = carry from LSB
    full_adder fa1 (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c1),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule