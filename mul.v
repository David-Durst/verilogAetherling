module BlackBoxMulUInt8(
	               input wire [7:0] I0,
	               input wire [7:0] I1,
	               output reg [7:0] O,
	               input wire       clock
	               );
`ifdef VERILATOR
   reg [7:0] reg0;
   reg [7:0] reg1;
   always @( posedge clock ) begin
      reg0 <= I0 * I1;
      reg1 <= reg0;
      O <= reg1;
   end
`endif
`ifndef VERILATOR
   $display (" non-verilator mul_uint8 not implemented yet.");
`endif
endmodule

module BlackBoxMulInt8(
	                      input signed wire [7:0] I0,
	                      input signed wire [7:0] I1,
	                      output signed reg [7:0] O,
	                      input wire       clock
	                      );
`ifdef VERILATOR
   reg [7:0]                             reg0;
   reg [7:0]                             reg1;
   always @( posedge clock ) begin
      reg0 <= I0 * I1;
      reg1 <= reg0;
      O <= reg1;
   end
`endif
`ifndef VERILATOR
   $display (" non-verilator mul_uint8 not implemented yet.");
`endif
endmodule
