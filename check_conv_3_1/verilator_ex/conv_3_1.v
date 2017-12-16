

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

module corebit_term (
  input in
);


endmodule //corebit_term

module coreir_neq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 != in1;

endmodule //coreir_neq

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module coreir_reg #(parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
reg [width-1:0] outReg=init;
always @(posedge clk) begin
  outReg <= in;
end
assign out = outReg;

endmodule //coreir_reg

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule //coreir_eq

module mem #(parameter depth=1, parameter width=1) (
  input clk,
  input [width-1:0] wdata,
  input [$clog2(depth)-1:0] waddr,
  input wen,
  output [width-1:0] rdata,
  input [$clog2(depth)-1:0] raddr
);
reg [width-1:0] data[depth];
always @(posedge clk) begin
  if (wen) begin
    data[waddr] <= wdata;
  end
end
assign rdata = data[raddr];

endmodule //mem

module coreir_mul #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 * in1;

endmodule //coreir_mul

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule //coreir_mux

module DesignTop (
  input  clk,
  input [15:0] in_0,
  output [15:0] out
);
  //Wire declarations for instance 'add_340_343_344' (Module coreir_add)
  wire [15:0] add_340_343_344__in0;
  wire [15:0] add_340_343_344__in1;
  wire [15:0] add_340_343_344__out;
  coreir_add #(.width(16)) add_340_343_344(
    .in0(add_340_343_344__in0),
    .in1(add_340_343_344__in1),
    .out(add_340_343_344__out)
  );

  //Wire declarations for instance 'add_340_347_348' (Module coreir_add)
  wire [15:0] add_340_347_348__in0;
  wire [15:0] add_340_347_348__in1;
  wire [15:0] add_340_347_348__out;
  coreir_add #(.width(16)) add_340_347_348(
    .in0(add_340_347_348__in0),
    .in1(add_340_347_348__in1),
    .out(add_340_347_348__out)
  );

  //Wire declarations for instance 'add_340_351_352' (Module coreir_add)
  wire [15:0] add_340_351_352__in0;
  wire [15:0] add_340_351_352__in1;
  wire [15:0] add_340_351_352__out;
  coreir_add #(.width(16)) add_340_351_352(
    .in0(add_340_351_352__in0),
    .in1(add_340_351_352__in1),
    .out(add_340_351_352__out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0__out;
  coreir_const #(.value(16'd0),.width(16)) const0_0(
    .out(const0_0__out)
  );

  //Wire declarations for instance 'const3_3' (Module coreir_const)
  wire [15:0] const3_3__out;
  coreir_const #(.value(16'd3),.width(16)) const3_3(
    .out(const3_3__out)
  );

  //Wire declarations for instance 'const5_5' (Module coreir_const)
  wire [15:0] const5_5__out;
  coreir_const #(.value(16'd5),.width(16)) const5_5(
    .out(const5_5__out)
  );

  //Wire declarations for instance 'const7_7' (Module coreir_const)
  wire [15:0] const7_7__out;
  coreir_const #(.value(16'd7),.width(16)) const7_7(
    .out(const7_7__out)
  );

  //Wire declarations for instance 'in_0_auto_reg' (Module coreir_reg)
  wire  in_0_auto_reg__clk;
  wire [15:0] in_0_auto_reg__in;
  wire [15:0] in_0_auto_reg__out;
  coreir_reg #(.init(16'd0),.width(16)) in_0_auto_reg(
    .clk(in_0_auto_reg__clk),
    .in(in_0_auto_reg__in),
    .out(in_0_auto_reg__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$add_r(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$add_w(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(4'd1),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$c1(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(4'd10),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$max_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$mem__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_1$mem__rdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(10),.width(16)) lb_p4_clamped_stencil_update_stream$mem_1$mem(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_p4_clamped_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_p4_clamped_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_p4_clamped_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_p4_clamped_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_p4_clamped_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$veq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$veq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$veq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$veq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$zero_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_p4_clamped_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_p4_clamped_stencil_update_stream$mem_1_valid_term(
    .in(lb_p4_clamped_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$add_r(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$add_w(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(4'd1),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$c1(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(4'd10),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$max_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$mem__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_2$mem__rdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(10),.width(16)) lb_p4_clamped_stencil_update_stream$mem_2$mem(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_p4_clamped_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_p4_clamped_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_p4_clamped_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_p4_clamped_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_p4_clamped_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$veq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$veq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$veq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$veq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$zero_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_p4_clamped_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_p4_clamped_stencil_update_stream$mem_2_valid_term(
    .in(lb_p4_clamped_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p4_clamped_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_p4_clamped_stencil_update_stream_wen(
    .out(lb_p4_clamped_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'mul_3423_343' (Module coreir_mul)
  wire [15:0] mul_3423_343__in0;
  wire [15:0] mul_3423_343__in1;
  wire [15:0] mul_3423_343__out;
  coreir_mul #(.width(16)) mul_3423_343(
    .in0(mul_3423_343__in0),
    .in1(mul_3423_343__in1),
    .out(mul_3423_343__out)
  );

  //Wire declarations for instance 'mul_3465_347' (Module coreir_mul)
  wire [15:0] mul_3465_347__in0;
  wire [15:0] mul_3465_347__in1;
  wire [15:0] mul_3465_347__out;
  coreir_mul #(.width(16)) mul_3465_347(
    .in0(mul_3465_347__in0),
    .in1(mul_3465_347__in1),
    .out(mul_3465_347__out)
  );

  //Wire declarations for instance 'mul_3507_351' (Module coreir_mul)
  wire [15:0] mul_3507_351__in0;
  wire [15:0] mul_3507_351__in1;
  wire [15:0] mul_3507_351__out;
  coreir_mul #(.width(16)) mul_3507_351(
    .in0(mul_3507_351__in0),
    .in1(mul_3507_351__in1),
    .out(mul_3507_351__out)
  );

  //All the connections
  assign add_340_343_344__in0[15:0] = const0_0__out[15:0];
  assign add_340_343_344__in1[15:0] = mul_3423_343__out[15:0];
  assign add_340_347_348__in0[15:0] = add_340_343_344__out[15:0];
  assign add_340_347_348__in1[15:0] = mul_3465_347__out[15:0];
  assign add_340_351_352__in0[15:0] = add_340_347_348__out[15:0];
  assign add_340_351_352__in1[15:0] = mul_3507_351__out[15:0];
  assign out[15:0] = add_340_351_352__out[15:0];
  assign mul_3423_343__in1[15:0] = const3_3__out[15:0];
  assign mul_3465_347__in1[15:0] = const5_5__out[15:0];
  assign mul_3507_351__in1[15:0] = const7_7__out[15:0];
  assign in_0_auto_reg__clk = clk;
  assign in_0_auto_reg__in[15:0] = in_0[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem__wdata[15:0] = in_0_auto_reg__out[15:0];
  assign mul_3507_351__in0[15:0] = in_0_auto_reg__out[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_r__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_r__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$c1__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_r__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_r__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_w__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_w__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$c1__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_w__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_w__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$max_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$max_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem__raddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_p4_clamped_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign mul_3465_347__in0[15:0] = lb_p4_clamped_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem__waddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem__wen = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__in[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux__sel = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$veq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__sel = lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$zero_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$veq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1_valid_term__in = lb_p4_clamped_stencil_update_stream$mem_1$veq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__in[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux__sel = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__sel = lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$zero_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_r__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_r__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$c1__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_r__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_r__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_w__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_w__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$c1__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_w__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_w__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$max_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$max_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem__raddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out[3:0];
  assign mul_3423_343__in0[15:0] = lb_p4_clamped_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem__waddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem__wen = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__in[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux__sel = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$veq__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__sel = lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$zero_const__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$veq__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2_valid_term__in = lb_p4_clamped_stencil_update_stream$mem_2$veq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__in[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux__sel = lb_p4_clamped_stencil_update_stream_wen__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__sel = lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux__in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$zero_const__out[3:0];

endmodule //DesignTop
