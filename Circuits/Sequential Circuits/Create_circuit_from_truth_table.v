module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    reg [1:0] test;
    assign test[0]=k;
    assign test[1]=j;
    always @(posedge clk) begin
        case(test)
            2'b00: Q=Q;
            2'b01: Q=0;
            2'b10: Q=1;
            2'b11: Q=~Q;
        endcase
    end
endmodule
