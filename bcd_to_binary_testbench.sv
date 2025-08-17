module bcd_to_binary_tb;
    reg  [3:0] hundreds, tens, ones;
    wire [9:0] binary_out;

    bcd_to_binary uut (
        .hundreds(hundreds),
        .tens(tens),
        .ones(ones),
        .binary_out(binary_out)
    );

    initial begin
        $monitor("BCD = %d%d%d | Binary = %d", hundreds, tens, ones, binary_out);

        hundreds = 4'd0; tens = 4'd0; ones = 4'd0;  #10; 
        hundreds = 4'd0; tens = 4'd1; ones = 4'd2;  #10; 
        hundreds = 4'd0; tens = 4'd4; ones = 4'd5;  #10; 
        hundreds = 4'd0; tens = 4'd9; ones = 4'd9;  #10; 
        hundreds = 4'd1; tens = 4'd2; ones = 4'd3;  #10; 
        hundreds = 4'd2; tens = 4'd5; ones = 4'd5;  #10; 
        hundreds = 4'd9; tens = 4'd9; ones = 4'd9;  #10; 

        $finish;
    end
endmodule
