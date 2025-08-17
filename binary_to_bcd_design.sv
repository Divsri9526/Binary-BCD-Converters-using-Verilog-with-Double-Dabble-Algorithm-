module binary_to_bcd (
    input  [7:0] binary_in,         // 8-bit binary input
    output reg [3:0] hundreds,      // BCD Hundreds digit
    output reg [3:0] tens,          // BCD Tens digit
    output reg [3:0] ones           // BCD Ones digit
);
    integer i;
    reg [19:0] shift_reg;  // 20-bit register: [hundreds|tens|ones|binary_in]

    always @(*) begin
        // Initialize shift register
        shift_reg = 20'd0;
        shift_reg[7:0] = binary_in;

        for (i = 0; i < 8; i = i + 1) begin
            // Check each BCD digit >= 5 → add 3
            if (shift_reg[11:8] >= 5)
                shift_reg[11:8] = shift_reg[11:8] + 3;
            if (shift_reg[15:12] >= 5)
                shift_reg[15:12] = shift_reg[15:12] + 3;
            if (shift_reg[19:16] >= 5)
                shift_reg[19:16] = shift_reg[19:16] + 3;

            shift_reg = shift_reg << 1;
        end

        hundreds = shift_reg[19:16];
        tens     = shift_reg[15:12];
        ones     = shift_reg[11:8];
    end
endmodule
