module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    assign p1y = (p1a & p1c & p1b) | (p1f & p1e & p1d);
    assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule
module top_module_with_wires ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire p1_int1;
    wire p1_int2;
    wire p1_or;
    
    wire p2_int1;
    wire p2_int2;
    wire p2_or;
    
    assign p1_int1 = p1a & p1c & p1b;
    assign p1_int2 = p1f & p1e & p1d;
    assign p1_or = p1_int1 | p1_int2;
    
    assign p2_int1 = p2a & p2b;
    assign p2_int2 = p2c & p2d;
    assign p2_or = p2_int1 | p2_int2;
    
    assign p2y = p2_or;
    assign p1y = p1_or;
endmodule