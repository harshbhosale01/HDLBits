module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
wire mux1, mux2;
    assign mux1=(E)?w:Q;
    assign mux2=(L)?R:mux1;
    always @(posedge clk) begin 
        Q=mux2;
    end
endmodule