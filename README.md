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

In `src/wire_decl.v`, I wrote three wires that perform logic on 4 inputs to produce 2 outputs.










<!-------Links--------->
[0]:https://hdlbits.01xz.net
[1]:https://digitaljs.tilk.eu/#