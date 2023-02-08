module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] prev_in;
    
    always @(posedge clk) begin
        if(in[7:0]!=prev_in[7:0]) anyedge=in^prev_in;
        else anyedge=0;
        prev_in=in;
    end
endmodule
