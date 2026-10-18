// Code your testbench here
// or browse Examples

module tb;

    reg a, b;

    wire and_y, or_y, not_y;
    wire nand_y, nor_y, xor_y;

    logic_gates dut (
        .a(a),
        .b(b),
        .and_y(and_y),
        .or_y(or_y),
        .not_y(not_y),
        .nand_y(nand_y),
        .nor_y(nor_y),
        .xor_y(xor_y)
    );

    integer i;

    initial begin
        $display("a b | AND OR NOT NAND NOR XOR");

        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;

            $display("%b %b |  %b   %b   %b    %b    %b   %b",
                     a, b, and_y, or_y, not_y,
                     nand_y, nor_y, xor_y);
        end

        $finish;
    end

endmodule
