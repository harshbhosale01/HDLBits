module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    reg [3:0] count;
    assign q=count;
    always @(posedge clk) begin
        if(reset || (count==9 && slowena==1)) count<=0;
        else if(slowena) count<=count+1;
    end
endmodule