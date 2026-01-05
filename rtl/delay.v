module delay_line #(
    parameter DELAY_CYCLES = 8
)(
    input  wire clk,
    input  wire spike_in,
    output wire spike_out
);

reg [DELAY_CYCLES-1:0] shift_reg;

always @(posedge clk) begin
    shift_reg <= {shift_reg[DELAY_CYCLES-2:0], spike_in};
end

assign spike_out = shift_reg[DELAY_CYCLES-1];

endmodule
