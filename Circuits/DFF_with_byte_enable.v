module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always @(posedge clk) begin
        if(byteena[0]==1) begin
            q[7:0]=(resetn==0)?0:d[7:0];
            //q[15:8]=8'd0;
        end
        if(byteena[1]==1) begin
            q[15:8]=(resetn==0)?0:d[15:8];
            //q[7:0]=8'd0;
        end
      
    end
endmodule