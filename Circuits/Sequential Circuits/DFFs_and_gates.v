module dff1(
    input d,
    input clk,
    output reg q);
    always @(posedge clk) begin
        q=d;
    end
endmodule
 
module top_module (
    input clk,
    input x,
    output z
); 
    reg w1=0,w2=0,w3=0;
    wire d1,d2,d3;
    

    dff1 block1(.d(d1),.clk(clk),.q(w1));
    dff1 block2(.d(d2),.clk(clk),.q(w2));
    dff1 block3(.d(d3),.clk(clk),.q(w3));
    assign d1=w1^x;
    assign d2=(~w2)& x;
    assign d3=(~w3) | x;
    assign z=~(w1 || w2 || w3);
endmodule
