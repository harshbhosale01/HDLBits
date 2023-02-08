module top_module (
    input clk,
    input d,
    output q
);
    reg d1,d2;

    assign q=(clk)? d1:d2;
    always @(posedge clk) begin
        d1=d;
    end
    always @(negedge clk) begin
        d2=d;
    end
endmodule