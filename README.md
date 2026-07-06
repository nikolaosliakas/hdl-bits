# hdl-bits: Hardware Description Language Repo


The tutorial solutions and my notes are here.

## Overview

Looking at HDL in Verilog. Following [this][0] guide.
For circuit diagrams of the Verilog I used [DigitalJS][1].

## Repo structure
```
./
  | -- src/
        | -- wire_decl.v # wire declaration for circuit.
  | -- README.md
  

```

## Notes

### Drivers/Source and Sinks

Currents in HDL are not bi-directional, they are _directed_ from sources to sinks. Sources are also known as drivers.

An `assign` statement drives a wire (or "net", as it's more formally called) with a value. This value can be as complex a function as you want, as long as it's a **combinational** (i.e., memory-less, with no hidden state) function. An assign statement is a continuous assignment because the output is "recomputed" whenever any of its inputs change, forever, much like a simple logic gate. 

### Bitwise Operators

| Operator | Type |
|----------|------|
|& | AND|
|~&| NAND|
| \| | Or |
| ~\| |  	Nor|
| ^ | 	XOR|
| ~^|  	XNOR|

After implementing these gates individually like so:
```Verilog
module (output out, input a b
);

assign out = a & b;
assign out = ~(a & b);
assign out = a | b;
assign out = ~(a | b);
assign out = a ^ b;
assign out = ~(a ^ b);

endmodule
```
### Wires
The connections assigned aren't a new wire but their meeting.

1. In `src/wire_decl.v`, I wrote three wires that perform logic on 4 inputs to produce 2 outputs.

2. In `src/chip7458.v`, I defined the following both ways.
    Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways. 









<!-------Links--------->
[0]:https://hdlbits.01xz.net
[1]:https://digitaljs.tilk.eu/#