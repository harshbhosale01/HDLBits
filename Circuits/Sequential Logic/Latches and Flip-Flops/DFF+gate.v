module top_module (
    input clk,
    input in, 
    output out);
    wire xtod;
    assign xtod = (~out && in) || (out && (~in));
    always @(posedge clk) begin
        out=xtod;
    end

endmodule