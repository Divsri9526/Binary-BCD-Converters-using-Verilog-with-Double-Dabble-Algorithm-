module bcd_to_binary (
    input  [3:0] hundreds,   // BCD hundreds digit
    input  [3:0] tens,       // BCD tens digit
    input  [3:0] ones,       // BCD ones digit
    output reg [9:0] binary_out // Binary output (0–999)
);
    always @(*) begin
        binary_out = (hundreds * 8'd100) +
                     (tens * 8'd10) +
                     (ones);
    end
endmodule

