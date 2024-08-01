

Creating an Adder Circuit


One step we can take towards this goal is to create an ALU, or an Arithmetic Logic Unit. An ALU can perform a bunch of bitwise operations like adding, subtracting, and shifting.

For this project, we are going to focus on creating one part of the ALU, the adder.

A full adder is normally comprised of two half adders. A half adder takes in two inputs, a and b, and returns a sum bit, s, and a carry bit, c. The truth table looks like this:

a	b	s	c
0	0	0	0
0	1	1	0
1	0	1	0
1	1	0	1
When we add 0 to 0, we should get a sum of 0 with a carry of 0. When we add 0 to 1, we should get a sum of 1, with a carry of 0. And so on.

The full adder takes in a, b, and a carry-in bit c. It returns a sum bit s and a carry-out bit c_out. The truth table looks like this:

a	b	c	s	c_out
0	0	0	0	0
0	0	1	1	0
0	1	0	1	0
0	1	1	0	1
1	0	0	1	0
1	0	1	0	1
1	1	0	0	1
1	1	1	1	1
