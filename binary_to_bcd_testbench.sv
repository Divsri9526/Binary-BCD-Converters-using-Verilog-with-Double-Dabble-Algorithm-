module binary_to_bcd_tb;
    reg  [7:0] binary_in;
    wire [3:0] hundreds, tens, ones;

    binary_to_bcd uut (
        .binary_in(binary_in),
        .hundreds(hundreds),
        .tens(tens),
        .ones(ones)
    );

    initial begin
        $monitor("Binary = %d | BCD = %d%d%d", binary_in, hundreds, tens, ones);

        binary_in = 8'd0;   #10;
        binary_in = 8'd9;   #10;
        binary_in = 8'd12;  #10;
        binary_in = 8'd45;  #10;
        binary_in = 8'd99;  #10;
        binary_in = 8'd123; #10;
        binary_in = 8'd255; #10;

        $finish;
    end
endmodule
