This code defines several arithmetic logic unit (ALU) functions using logical gate operations. The gates (`NAND_gate`, `NOT_gate`, `AND_gate`, `OR_gate`, `XOR_gate`) are imported from separate files (`nand.py`, `not_gate.py`, etc.). 

1. **Half Adder**: Computes the sum (`s`) and carry (`c`) for two binary inputs (`a`, `b`) using XOR and AND gates.
   
2. **Full Adder**: Extends the half adder to include a carry-in (`c`) and computes the sum (`sum2`) and carry-out (`c_out`) using XOR and OR gates.

3. **ALU Function**: Depending on the `opcode` parameter:
   - Opcode `0` invokes the half adder to perform a simple addition operation.
   - Opcode `1` invokes the full adder to perform a more complex addition with carry.

Each function demonstrates how basic logical gates can be combined to perform binary arithmetic operations, showcasing modular and reusable code design for digital circuit simulations or educational purposes. The commented-out `print` statements provide example invocations and outputs for each function with different input values.