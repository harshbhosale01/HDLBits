module top_module (
    input d, 
    input ena,
    output q);
    
    assign q=(ena==1)?d:q;
    
endmodule