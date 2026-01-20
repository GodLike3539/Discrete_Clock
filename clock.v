module clock (
    input wire clk50,
    input wire clk10Meg_ref,
    input wire clk10Meg_ext,
    output reg signed [9:0] cnt
);



    always @(posedge clk10Meg_ref) begin
        cnt <= cnt - 1;
    end
    
    
    always @(posedge clk10Meg_ext) begin
        cnt <= cnt + 1;
    end
    
endmodule
