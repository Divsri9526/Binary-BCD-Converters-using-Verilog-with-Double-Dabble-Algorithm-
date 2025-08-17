module binary_bcd_converter_tb;
    reg  [7:0] binary_in;
    reg  [3:0] hundreds_in, tens_in, ones_in;
    wire [3:0] hundreds_out, tens_out, ones_out;
    wire [9:0] binary_out;

    binary_bcd_converter uut (
        .binary_in(binary_in),
        .hundreds_in(hundreds_in),
        .tens_in(tens_in),
        .ones_in(ones_in),
        .hundreds_out(hundreds_out),
        .tens_out(tens_out),
        .ones_out(ones_out),
        .binary_out(binary_out)
    );

    initial begin
      $monitor("Binary_in = %d | BCD_out = %d%d%d |<-->| BCD_in = %d%d%d | Binary_out = %d",
                  binary_in, hundreds_out, tens_out, ones_out,
                  hundreds_in, tens_in, ones_in, binary_out);

        binary_in = 8'd0;   hundreds_in=0; tens_in=0; ones_in=0; #10;
        binary_in = 8'd9;   hundreds_in=0; tens_in=1; ones_in=2; #10;
        binary_in = 8'd45;  hundreds_in=0; tens_in=4; ones_in=5; #10;
        binary_in = 8'd99;  hundreds_in=0; tens_in=9; ones_in=9; #10;
        binary_in = 8'd123; hundreds_in=1; tens_in=2; ones_in=3; #10;
        binary_in = 8'd255; hundreds_in=2; tens_in=5; ones_in=5; #10;

        $finish;
    end
endmodule
