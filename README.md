# 🔢 Binary ↔ BCD Converters in Verilog

## 📌 Project Overview
This project implements **three Verilog modules** to perform conversions between Binary and BCD (Binary-Coded Decimal):

1. **Binary to BCD Converter** – Uses the efficient **Double Dabble algorithm** (Shift-and-Add-3).
2. **BCD to Binary Converter** – Converts BCD digits back to a binary number.
3. **Combined Binary ↔ BCD Converter** – Performs both conversions in a single module for testing side-by-side.

These converters are essential in **digital systems where binary values must be displayed or processed in decimal format**, such as **digital counters, calculators, FPGA displays, and embedded systems**.

---

## 📂 Files and Structure

| File                         | Description                                                              |
| ----------------------------------- | ------------------------------------------------------------------------ |
| **binary\_to\_bcd\_desgin.sv**           | Verilog module for Binary → BCD conversion using Double Dabble algorithm |
| **bcd\_to\_binary\_desgin.sv**           | Verilog module for BCD → Binary conversion                               |
| **binary\_bcd\_converter\_desgin.sv**    | Combined bidirectional converter handling both Binary ↔ BCD conversions  |
| **binary\_to\_bcd\_testbench.sv**        | Testbench for verifying Binary → BCD converter                           |
| **bcd\_to\_binary\_testbench.sv**        | Testbench for verifying BCD → Binary converter                           |
| **binary\_bcd\_converter\_testbench.sv** | Testbench for validating combined bidirectional converter                |

---

## 🛠 Features
- **8-bit binary support** (0–255 → 3 BCD digits)
- **Scalable design** (can be extended for 16/32 bits)
- **Double Dabble algorithm** for Binary → BCD
- **Clean testbenches** for functional verification
- **Beginner-friendly, modular RTL design**

---

## 📊 Example Simulation Output

| Binary Input (`binary_in`) | BCD Output (`hundreds:tens:ones`) | BCD Input (`hundreds tens ones`) | Binary Output (`binary_out`) |
|-----------------------------|-----------------------------------|----------------------------------|------------------------------|
| 0                           | 000                               | 000                              | 0                            |
| 9                           | 009                               | 012                              | 12                           |
| 45                          | 045                               | 045                              | 45                           |
| 99                          | 099                               | 099                              | 99                           |
| 123                         | 123                               | 123                              | 123                          |
| 255                         | 255                               | 255                              | 255                          |

---
