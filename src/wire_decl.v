`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and_a_b;
    wire and_c_d;
    wire or_and_and;
    
    assign out = or_and_and;
    assign out_n = ~or_and_and;
    
    assign or_and_and = and_a_b | and_c_d;
    
    assign and_a_b = a & b;
    assign and_c_d = c & d;
    
endmodule