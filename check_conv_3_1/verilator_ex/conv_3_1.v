

module wire_U0 (
  input [15:0] in,
  output [15:0] out
);
  //All the connections
  assign out[15:0] = in[15:0];

endmodule //wire_U0

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

module corebit_term (
  input in
);


endmodule //corebit_term

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module coreir_neq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 != in1;

endmodule //coreir_neq

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule //coreir_mux

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

module reg_U6 #(parameter init=1) (
  input  clk,
  input  en,
  input [3:0] in,
  output [3:0] out
);
  //Wire declarations for instance 'enMux' (Module coreir_mux)
  wire [3:0] enMux__in0;
  wire [3:0] enMux__in1;
  wire [3:0] enMux__out;
  wire  enMux__sel;
  coreir_mux #(.width(4)) enMux(
    .in0(enMux__in0),
    .in1(enMux__in1),
    .out(enMux__out),
    .sel(enMux__sel)
  );

  //Wire declarations for instance 'reg0' (Module coreir_reg)
  wire  reg0__clk;
  wire [3:0] reg0__in;
  wire [3:0] reg0__out;
  coreir_reg #(.init(init),.width(4)) reg0(
    .clk(reg0__clk),
    .in(reg0__in),
    .out(reg0__out)
  );

  //All the connections
  assign enMux__in0[3:0] = reg0__out[3:0];
  assign enMux__in1[3:0] = in[3:0];
  assign reg0__in[3:0] = enMux__out[3:0];
  assign enMux__sel = en;
  assign reg0__clk = clk;
  assign out[3:0] = reg0__out[3:0];

endmodule //reg_U6

module LinebufferMem_U5 (
  input  clk,
  output [15:0] rdata,
  output  valid,
  input [15:0] wdata,
  input  wen
);
  //Wire declarations for instance 'add_r' (Module coreir_add)
  wire [3:0] add_r__in0;
  wire [3:0] add_r__in1;
  wire [3:0] add_r__out;
  coreir_add #(.width(4)) add_r(
    .in0(add_r__in0),
    .in1(add_r__in1),
    .out(add_r__out)
  );

  //Wire declarations for instance 'add_w' (Module coreir_add)
  wire [3:0] add_w__in0;
  wire [3:0] add_w__in1;
  wire [3:0] add_w__out;
  coreir_add #(.width(4)) add_w(
    .in0(add_w__in0),
    .in1(add_w__in1),
    .out(add_w__out)
  );

  //Wire declarations for instance 'c1' (Module coreir_const)
  wire [3:0] c1__out;
  coreir_const #(.value(4'd1),.width(4)) c1(
    .out(c1__out)
  );

  //Wire declarations for instance 'max_const' (Module coreir_const)
  wire [3:0] max_const__out;
  coreir_const #(.value(4'd10),.width(4)) max_const(
    .out(max_const__out)
  );

  //Wire declarations for instance 'mem' (Module mem)
  wire  mem__clk;
  wire [3:0] mem__raddr;
  wire [15:0] mem__rdata;
  wire [3:0] mem__waddr;
  wire [15:0] mem__wdata;
  wire  mem__wen;
  mem #(.depth(10),.width(16)) mem(
    .clk(mem__clk),
    .raddr(mem__raddr),
    .rdata(mem__rdata),
    .waddr(mem__waddr),
    .wdata(mem__wdata),
    .wen(mem__wen)
  );

  //Wire declarations for instance 'raddr' (Module reg_U6)
  wire  raddr__clk;
  wire  raddr__en;
  wire [3:0] raddr__in;
  wire [3:0] raddr__out;
  reg_U6 #(.init(4'd0)) raddr(
    .clk(raddr__clk),
    .en(raddr__en),
    .in(raddr__in),
    .out(raddr__out)
  );

  //Wire declarations for instance 'raddr_eq' (Module coreir_eq)
  wire [3:0] raddr_eq__in0;
  wire [3:0] raddr_eq__in1;
  wire  raddr_eq__out;
  coreir_eq #(.width(4)) raddr_eq(
    .in0(raddr_eq__in0),
    .in1(raddr_eq__in1),
    .out(raddr_eq__out)
  );

  //Wire declarations for instance 'raddr_mux' (Module coreir_mux)
  wire [3:0] raddr_mux__in0;
  wire [3:0] raddr_mux__in1;
  wire [3:0] raddr_mux__out;
  wire  raddr_mux__sel;
  coreir_mux #(.width(4)) raddr_mux(
    .in0(raddr_mux__in0),
    .in1(raddr_mux__in1),
    .out(raddr_mux__out),
    .sel(raddr_mux__sel)
  );

  //Wire declarations for instance 'veq' (Module coreir_neq)
  wire [3:0] veq__in0;
  wire [3:0] veq__in1;
  wire  veq__out;
  coreir_neq #(.width(4)) veq(
    .in0(veq__in0),
    .in1(veq__in1),
    .out(veq__out)
  );

  //Wire declarations for instance 'waddr' (Module reg_U6)
  wire  waddr__clk;
  wire  waddr__en;
  wire [3:0] waddr__in;
  wire [3:0] waddr__out;
  reg_U6 #(.init(4'd0)) waddr(
    .clk(waddr__clk),
    .en(waddr__en),
    .in(waddr__in),
    .out(waddr__out)
  );

  //Wire declarations for instance 'waddr_eq' (Module coreir_eq)
  wire [3:0] waddr_eq__in0;
  wire [3:0] waddr_eq__in1;
  wire  waddr_eq__out;
  coreir_eq #(.width(4)) waddr_eq(
    .in0(waddr_eq__in0),
    .in1(waddr_eq__in1),
    .out(waddr_eq__out)
  );

  //Wire declarations for instance 'waddr_mux' (Module coreir_mux)
  wire [3:0] waddr_mux__in0;
  wire [3:0] waddr_mux__in1;
  wire [3:0] waddr_mux__out;
  wire  waddr_mux__sel;
  coreir_mux #(.width(4)) waddr_mux(
    .in0(waddr_mux__in0),
    .in1(waddr_mux__in1),
    .out(waddr_mux__out),
    .sel(waddr_mux__sel)
  );

  //Wire declarations for instance 'zero_const' (Module coreir_const)
  wire [3:0] zero_const__out;
  coreir_const #(.value(4'd0),.width(4)) zero_const(
    .out(zero_const__out)
  );

  //All the connections
  assign add_r__in0[3:0] = raddr__out[3:0];
  assign add_r__in1[3:0] = c1__out[3:0];
  assign raddr_eq__in0[3:0] = add_r__out[3:0];
  assign raddr_mux__in0[3:0] = add_r__out[3:0];
  assign add_w__in0[3:0] = waddr__out[3:0];
  assign add_w__in1[3:0] = c1__out[3:0];
  assign waddr_eq__in0[3:0] = add_w__out[3:0];
  assign waddr_mux__in0[3:0] = add_w__out[3:0];
  assign raddr_eq__in1[3:0] = max_const__out[3:0];
  assign waddr_eq__in1[3:0] = max_const__out[3:0];
  assign mem__clk = clk;
  assign mem__raddr[3:0] = raddr__out[3:0];
  assign rdata[15:0] = mem__rdata[15:0];
  assign mem__waddr[3:0] = waddr__out[3:0];
  assign mem__wdata[15:0] = wdata[15:0];
  assign mem__wen = wen;
  assign raddr__clk = clk;
  assign raddr__en = wen;
  assign raddr__in[3:0] = raddr_mux__out[3:0];
  assign veq__in0[3:0] = raddr__out[3:0];
  assign raddr_mux__sel = raddr_eq__out;
  assign raddr_mux__in1[3:0] = zero_const__out[3:0];
  assign waddr__clk = clk;
  assign valid = veq__out;
  assign waddr__en = wen;
  assign veq__in1[3:0] = waddr__out[3:0];
  assign waddr__in[3:0] = waddr_mux__out[3:0];
  assign waddr_mux__sel = waddr_eq__out;
  assign waddr_mux__in1[3:0] = zero_const__out[3:0];

endmodule //LinebufferMem_U5

module Linebuffer_U3 (
  input  clk,
  input [15:0] in,
  output [15:0] out_0_0,
  output [15:0] out_1_0,
  output [15:0] out_2_0,
  input  wen
);
  //Wire declarations for instance 'mem_1' (Module LinebufferMem_U5)
  wire  mem_1__clk;
  wire [15:0] mem_1__rdata;
  wire  mem_1__valid;
  wire [15:0] mem_1__wdata;
  wire  mem_1__wen;
  LinebufferMem_U5 mem_1(
    .clk(mem_1__clk),
    .rdata(mem_1__rdata),
    .valid(mem_1__valid),
    .wdata(mem_1__wdata),
    .wen(mem_1__wen)
  );

  //Wire declarations for instance 'mem_1_valid_term' (Module corebit_term)
  wire  mem_1_valid_term__in;
  corebit_term mem_1_valid_term(
    .in(mem_1_valid_term__in)
  );

  //Wire declarations for instance 'mem_2' (Module LinebufferMem_U5)
  wire  mem_2__clk;
  wire [15:0] mem_2__rdata;
  wire  mem_2__valid;
  wire [15:0] mem_2__wdata;
  wire  mem_2__wen;
  LinebufferMem_U5 mem_2(
    .clk(mem_2__clk),
    .rdata(mem_2__rdata),
    .valid(mem_2__valid),
    .wdata(mem_2__wdata),
    .wen(mem_2__wen)
  );

  //Wire declarations for instance 'mem_2_valid_term' (Module corebit_term)
  wire  mem_2_valid_term__in;
  corebit_term mem_2_valid_term(
    .in(mem_2_valid_term__in)
  );

  //All the connections
  assign mem_1__clk = clk;
  assign mem_2__wdata[15:0] = mem_1__rdata[15:0];
  assign out_1_0[15:0] = mem_1__rdata[15:0];
  assign mem_1_valid_term__in = mem_1__valid;
  assign mem_1__wdata[15:0] = in[15:0];
  assign mem_1__wen = wen;
  assign mem_2__clk = clk;
  assign out_0_0[15:0] = mem_2__rdata[15:0];
  assign mem_2_valid_term__in = mem_2__valid;
  assign mem_2__wen = wen;
  assign out_2_0[15:0] = in[15:0];

endmodule //Linebuffer_U3

module DesignTop (
  input  clk,
  input [15:0] in_0,
  output [15:0] out
);
  //Wire declarations for instance '_341_pt' (Module wire_U0)
  wire [15:0] _341_pt__in;
  wire [15:0] _341_pt__out;
  wire_U0 _341_pt(
    .in(_341_pt__in),
    .out(_341_pt__out)
  );

  //Wire declarations for instance '_345_pt' (Module wire_U0)
  wire [15:0] _345_pt__in;
  wire [15:0] _345_pt__out;
  wire_U0 _345_pt(
    .in(_345_pt__in),
    .out(_345_pt__out)
  );

  //Wire declarations for instance '_349_pt' (Module wire_U0)
  wire [15:0] _349_pt__in;
  wire [15:0] _349_pt__out;
  wire_U0 _349_pt(
    .in(_349_pt__in),
    .out(_349_pt__out)
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

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream' (Module Linebuffer_U3)
  wire  lb_p4_clamped_stencil_update_stream__clk;
  wire [15:0] lb_p4_clamped_stencil_update_stream__in;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_0_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_1_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_2_0;
  wire  lb_p4_clamped_stencil_update_stream__wen;
  Linebuffer_U3 lb_p4_clamped_stencil_update_stream(
    .clk(lb_p4_clamped_stencil_update_stream__clk),
    .in(lb_p4_clamped_stencil_update_stream__in),
    .out_0_0(lb_p4_clamped_stencil_update_stream__out_0_0),
    .out_1_0(lb_p4_clamped_stencil_update_stream__out_1_0),
    .out_2_0(lb_p4_clamped_stencil_update_stream__out_2_0),
    .wen(lb_p4_clamped_stencil_update_stream__wen)
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
  assign _341_pt__in[15:0] = lb_p4_clamped_stencil_update_stream__out_0_0[15:0];
  assign mul_3423_343__in0[15:0] = _341_pt__out[15:0];
  assign _345_pt__in[15:0] = lb_p4_clamped_stencil_update_stream__out_1_0[15:0];
  assign mul_3465_347__in0[15:0] = _345_pt__out[15:0];
  assign _349_pt__in[15:0] = lb_p4_clamped_stencil_update_stream__out_2_0[15:0];
  assign mul_3507_351__in0[15:0] = _349_pt__out[15:0];
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
  assign lb_p4_clamped_stencil_update_stream__clk = clk;
  assign lb_p4_clamped_stencil_update_stream__in[15:0] = in_0[15:0];
  assign lb_p4_clamped_stencil_update_stream__wen = lb_p4_clamped_stencil_update_stream_wen__out;

endmodule //DesignTop
