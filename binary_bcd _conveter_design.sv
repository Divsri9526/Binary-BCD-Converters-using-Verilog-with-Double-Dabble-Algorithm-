module binary_bcd_converter (
    input  [7:0] binary_in,         // 8-bit binary input (0–255)
    input  [3:0] hundreds_in,       // BCD hundreds digit
    input  [3:0] tens_in,           // BCD tens digit
    input  [3:0] ones_in,           // BCD ones digit
    output reg [3:0] hundreds_out,  // BCD Hundreds (from binary)
    output reg [3:0] tens_out,      // BCD Tens (from binary)
    output reg [3:0] ones_out,      // BCD Ones (from binary)
    output reg [9:0] binary_out     // Binary (from BCD)
);

    integer i;
    reg [19:0] shift_reg;  
    // Binary → BCD Conversion
    always @(*) begin
        shift_reg = 20'd0;
        shift_reg[7:0] = binary_in;

        for (i = 0; i < 8; i = i + 1) begin
            if (shift_reg[11:8] >= 5)
                shift_reg[11:8] = shift_reg[11:8] + 3;
            if (shift_reg[15:12] >= 5)
                shift_reg[15:12] = shift_reg[15:12] + 3;
            if (shift_reg[19:16] >= 5)
                shift_reg[19:16] = shift_reg[19:16] + 3;
            shift_reg = shift_reg << 1;
        end

        hundreds_out = shift_reg[19:16];
        tens_out     = shift_reg[15:12];
        ones_out     = shift_reg[11:8];
    end
    // BCD → Binary Conversion
    always @(*) begin
        binary_out = (hundreds_in * 8'd100) +
                     (tens_in * 8'd10) +
                     (ones_in);
    end
endmodule

