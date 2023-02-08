module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] prev_in;
    always @(posedge clk) begin
        if(in[7:0]!=prev_in[7:0]) begin
            if(prev_in[0]!=in[0])
                pedge[0]=in[0];
            else pedge[0]=0;
            if(prev_in[1]!=in[1])
                pedge[1]=in[1];
            else pedge[1]=0;
            if(prev_in[2]!=in[2])
                pedge[2]=in[2];
            else pedge[2]=0;
            if(prev_in[3]!=in[3])
                pedge[3]=in[3];
            else pedge[3]=0;
            if(prev_in[4]!=in[4])
                pedge[4]=in[4];
            else pedge[4]=0;
            if(prev_in[5]!=in[5])
                pedge[5]=in[5];
            else pedge[5]=0;
            if(prev_in[6]!=in[6])
                pedge[6]=in[6];
            else pedge[6]=0;
            if(prev_in[7]!=in[7])
                pedge[7]=in[7];
            else pedge[7]=0;
        end
        else begin pedge=0; end
        prev_in=in;
    end
endmodule
