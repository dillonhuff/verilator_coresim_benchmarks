

module corebit_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule //corebit_and

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

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_ashr #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = $signed(in0) >>> in1;

endmodule //coreir_ashr

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

module coreir_sge #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = $signed(in0) >= $signed(in1);

endmodule //coreir_sge

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

module coreir_ule #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 <= in1;

endmodule //coreir_ule

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

module coreir_ult #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 < in1;

endmodule //coreir_ult

module coreir_neq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 != in1;

endmodule //coreir_neq

module coreir_sub #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 - in1;

endmodule //coreir_sub

module DesignTop (
  input  clk,
  input [15:0] in_0,
  output [15:0] out
);
  //Wire declarations for instance 'add_637_640_641' (Module coreir_add)
  wire [15:0] add_637_640_641__in0;
  wire [15:0] add_637_640_641__in1;
  wire [15:0] add_637_640_641__out;
  coreir_add #(.width(16)) add_637_640_641(
    .in0(add_637_640_641__in0),
    .in1(add_637_640_641__in1),
    .out(add_637_640_641__out)
  );

  //Wire declarations for instance 'add_644_646_647' (Module coreir_add)
  wire [15:0] add_644_646_647__in0;
  wire [15:0] add_644_646_647__in1;
  wire [15:0] add_644_646_647__out;
  coreir_add #(.width(16)) add_644_646_647(
    .in0(add_644_646_647__in0),
    .in1(add_644_646_647__in1),
    .out(add_644_646_647__out)
  );

  //Wire declarations for instance 'add_651_652_653' (Module coreir_add)
  wire [15:0] add_651_652_653__in0;
  wire [15:0] add_651_652_653__in1;
  wire [15:0] add_651_652_653__out;
  coreir_add #(.width(16)) add_651_652_653(
    .in0(add_651_652_653__in0),
    .in1(add_651_652_653__in1),
    .out(add_651_652_653__out)
  );

  //Wire declarations for instance 'add_651_654_655' (Module coreir_add)
  wire [15:0] add_651_654_655__in0;
  wire [15:0] add_651_654_655__in1;
  wire [15:0] add_651_654_655__out;
  coreir_add #(.width(16)) add_651_654_655(
    .in0(add_651_654_655__in0),
    .in1(add_651_654_655__in1),
    .out(add_651_654_655__out)
  );

  //Wire declarations for instance 'add_651_656_657' (Module coreir_add)
  wire [15:0] add_651_656_657__in0;
  wire [15:0] add_651_656_657__in1;
  wire [15:0] add_651_656_657__out;
  coreir_add #(.width(16)) add_651_656_657(
    .in0(add_651_656_657__in0),
    .in1(add_651_656_657__in1),
    .out(add_651_656_657__out)
  );

  //Wire declarations for instance 'add_651_658_659' (Module coreir_add)
  wire [15:0] add_651_658_659__in0;
  wire [15:0] add_651_658_659__in1;
  wire [15:0] add_651_658_659__out;
  coreir_add #(.width(16)) add_651_658_659(
    .in0(add_651_658_659__in0),
    .in1(add_651_658_659__in1),
    .out(add_651_658_659__out)
  );

  //Wire declarations for instance 'add_651_660_661' (Module coreir_add)
  wire [15:0] add_651_660_661__in0;
  wire [15:0] add_651_660_661__in1;
  wire [15:0] add_651_660_661__out;
  coreir_add #(.width(16)) add_651_660_661(
    .in0(add_651_660_661__in0),
    .in1(add_651_660_661__in1),
    .out(add_651_660_661__out)
  );

  //Wire declarations for instance 'add_651_662_663' (Module coreir_add)
  wire [15:0] add_651_662_663__in0;
  wire [15:0] add_651_662_663__in1;
  wire [15:0] add_651_662_663__out;
  coreir_add #(.width(16)) add_651_662_663(
    .in0(add_651_662_663__in0),
    .in1(add_651_662_663__in1),
    .out(add_651_662_663__out)
  );

  //Wire declarations for instance 'add_651_664_665' (Module coreir_add)
  wire [15:0] add_651_664_665__in0;
  wire [15:0] add_651_664_665__in1;
  wire [15:0] add_651_664_665__out;
  coreir_add #(.width(16)) add_651_664_665(
    .in0(add_651_664_665__in0),
    .in1(add_651_664_665__in1),
    .out(add_651_664_665__out)
  );

  //Wire declarations for instance 'add_651_666_667' (Module coreir_add)
  wire [15:0] add_651_666_667__in0;
  wire [15:0] add_651_666_667__in1;
  wire [15:0] add_651_666_667__out;
  coreir_add #(.width(16)) add_651_666_667(
    .in0(add_651_666_667__in0),
    .in1(add_651_666_667__in1),
    .out(add_651_666_667__out)
  );

  //Wire declarations for instance 'add_651_668_669' (Module coreir_add)
  wire [15:0] add_651_668_669__in0;
  wire [15:0] add_651_668_669__in1;
  wire [15:0] add_651_668_669__out;
  coreir_add #(.width(16)) add_651_668_669(
    .in0(add_651_668_669__in0),
    .in1(add_651_668_669__in1),
    .out(add_651_668_669__out)
  );

  //Wire declarations for instance 'add_674_678_679' (Module coreir_add)
  wire [15:0] add_674_678_679__in0;
  wire [15:0] add_674_678_679__in1;
  wire [15:0] add_674_678_679__out;
  coreir_add #(.width(16)) add_674_678_679(
    .in0(add_674_678_679__in0),
    .in1(add_674_678_679__in1),
    .out(add_674_678_679__out)
  );

  //Wire declarations for instance 'add_683_685_686' (Module coreir_add)
  wire [15:0] add_683_685_686__in0;
  wire [15:0] add_683_685_686__in1;
  wire [15:0] add_683_685_686__out;
  coreir_add #(.width(16)) add_683_685_686(
    .in0(add_683_685_686__in0),
    .in1(add_683_685_686__in1),
    .out(add_683_685_686__out)
  );

  //Wire declarations for instance 'add_695_696_697' (Module coreir_add)
  wire [15:0] add_695_696_697__in0;
  wire [15:0] add_695_696_697__in1;
  wire [15:0] add_695_696_697__out;
  coreir_add #(.width(16)) add_695_696_697(
    .in0(add_695_696_697__in0),
    .in1(add_695_696_697__in1),
    .out(add_695_696_697__out)
  );

  //Wire declarations for instance 'add_695_698_699' (Module coreir_add)
  wire [15:0] add_695_698_699__in0;
  wire [15:0] add_695_698_699__in1;
  wire [15:0] add_695_698_699__out;
  coreir_add #(.width(16)) add_695_698_699(
    .in0(add_695_698_699__in0),
    .in1(add_695_698_699__in1),
    .out(add_695_698_699__out)
  );

  //Wire declarations for instance 'add_695_700_701' (Module coreir_add)
  wire [15:0] add_695_700_701__in0;
  wire [15:0] add_695_700_701__in1;
  wire [15:0] add_695_700_701__out;
  coreir_add #(.width(16)) add_695_700_701(
    .in0(add_695_700_701__in0),
    .in1(add_695_700_701__in1),
    .out(add_695_700_701__out)
  );

  //Wire declarations for instance 'add_695_702_703' (Module coreir_add)
  wire [15:0] add_695_702_703__in0;
  wire [15:0] add_695_702_703__in1;
  wire [15:0] add_695_702_703__out;
  coreir_add #(.width(16)) add_695_702_703(
    .in0(add_695_702_703__in0),
    .in1(add_695_702_703__in1),
    .out(add_695_702_703__out)
  );

  //Wire declarations for instance 'add_695_704_705' (Module coreir_add)
  wire [15:0] add_695_704_705__in0;
  wire [15:0] add_695_704_705__in1;
  wire [15:0] add_695_704_705__out;
  coreir_add #(.width(16)) add_695_704_705(
    .in0(add_695_704_705__in0),
    .in1(add_695_704_705__in1),
    .out(add_695_704_705__out)
  );

  //Wire declarations for instance 'add_695_706_707' (Module coreir_add)
  wire [15:0] add_695_706_707__in0;
  wire [15:0] add_695_706_707__in1;
  wire [15:0] add_695_706_707__out;
  coreir_add #(.width(16)) add_695_706_707(
    .in0(add_695_706_707__in0),
    .in1(add_695_706_707__in1),
    .out(add_695_706_707__out)
  );

  //Wire declarations for instance 'add_695_708_709' (Module coreir_add)
  wire [15:0] add_695_708_709__in0;
  wire [15:0] add_695_708_709__in1;
  wire [15:0] add_695_708_709__out;
  coreir_add #(.width(16)) add_695_708_709(
    .in0(add_695_708_709__in0),
    .in1(add_695_708_709__in1),
    .out(add_695_708_709__out)
  );

  //Wire declarations for instance 'add_695_710_711' (Module coreir_add)
  wire [15:0] add_695_710_711__in0;
  wire [15:0] add_695_710_711__in1;
  wire [15:0] add_695_710_711__out;
  coreir_add #(.width(16)) add_695_710_711(
    .in0(add_695_710_711__in0),
    .in1(add_695_710_711__in1),
    .out(add_695_710_711__out)
  );

  //Wire declarations for instance 'add_695_712_713' (Module coreir_add)
  wire [15:0] add_695_712_713__in0;
  wire [15:0] add_695_712_713__in1;
  wire [15:0] add_695_712_713__out;
  coreir_add #(.width(16)) add_695_712_713(
    .in0(add_695_712_713__in0),
    .in1(add_695_712_713__in1),
    .out(add_695_712_713__out)
  );

  //Wire declarations for instance 'add_717_718_719' (Module coreir_add)
  wire [15:0] add_717_718_719__in0;
  wire [15:0] add_717_718_719__in1;
  wire [15:0] add_717_718_719__out;
  coreir_add #(.width(16)) add_717_718_719(
    .in0(add_717_718_719__in0),
    .in1(add_717_718_719__in1),
    .out(add_717_718_719__out)
  );

  //Wire declarations for instance 'add_717_720_721' (Module coreir_add)
  wire [15:0] add_717_720_721__in0;
  wire [15:0] add_717_720_721__in1;
  wire [15:0] add_717_720_721__out;
  coreir_add #(.width(16)) add_717_720_721(
    .in0(add_717_720_721__in0),
    .in1(add_717_720_721__in1),
    .out(add_717_720_721__out)
  );

  //Wire declarations for instance 'add_717_722_723' (Module coreir_add)
  wire [15:0] add_717_722_723__in0;
  wire [15:0] add_717_722_723__in1;
  wire [15:0] add_717_722_723__out;
  coreir_add #(.width(16)) add_717_722_723(
    .in0(add_717_722_723__in0),
    .in1(add_717_722_723__in1),
    .out(add_717_722_723__out)
  );

  //Wire declarations for instance 'add_717_724_725' (Module coreir_add)
  wire [15:0] add_717_724_725__in0;
  wire [15:0] add_717_724_725__in1;
  wire [15:0] add_717_724_725__out;
  coreir_add #(.width(16)) add_717_724_725(
    .in0(add_717_724_725__in0),
    .in1(add_717_724_725__in1),
    .out(add_717_724_725__out)
  );

  //Wire declarations for instance 'add_717_726_727' (Module coreir_add)
  wire [15:0] add_717_726_727__in0;
  wire [15:0] add_717_726_727__in1;
  wire [15:0] add_717_726_727__out;
  coreir_add #(.width(16)) add_717_726_727(
    .in0(add_717_726_727__in0),
    .in1(add_717_726_727__in1),
    .out(add_717_726_727__out)
  );

  //Wire declarations for instance 'add_717_728_729' (Module coreir_add)
  wire [15:0] add_717_728_729__in0;
  wire [15:0] add_717_728_729__in1;
  wire [15:0] add_717_728_729__out;
  coreir_add #(.width(16)) add_717_728_729(
    .in0(add_717_728_729__in0),
    .in1(add_717_728_729__in1),
    .out(add_717_728_729__out)
  );

  //Wire declarations for instance 'add_717_730_731' (Module coreir_add)
  wire [15:0] add_717_730_731__in0;
  wire [15:0] add_717_730_731__in1;
  wire [15:0] add_717_730_731__out;
  coreir_add #(.width(16)) add_717_730_731(
    .in0(add_717_730_731__in0),
    .in1(add_717_730_731__in1),
    .out(add_717_730_731__out)
  );

  //Wire declarations for instance 'add_717_732_733' (Module coreir_add)
  wire [15:0] add_717_732_733__in0;
  wire [15:0] add_717_732_733__in1;
  wire [15:0] add_717_732_733__out;
  coreir_add #(.width(16)) add_717_732_733(
    .in0(add_717_732_733__in0),
    .in1(add_717_732_733__in1),
    .out(add_717_732_733__out)
  );

  //Wire declarations for instance 'add_717_734_735' (Module coreir_add)
  wire [15:0] add_717_734_735__in0;
  wire [15:0] add_717_734_735__in1;
  wire [15:0] add_717_734_735__out;
  coreir_add #(.width(16)) add_717_734_735(
    .in0(add_717_734_735__in0),
    .in1(add_717_734_735__in1),
    .out(add_717_734_735__out)
  );

  //Wire declarations for instance 'add_740_741_742' (Module coreir_add)
  wire [15:0] add_740_741_742__in0;
  wire [15:0] add_740_741_742__in1;
  wire [15:0] add_740_741_742__out;
  coreir_add #(.width(16)) add_740_741_742(
    .in0(add_740_741_742__in0),
    .in1(add_740_741_742__in1),
    .out(add_740_741_742__out)
  );

  //Wire declarations for instance 'ashr_736_739_740' (Module coreir_ashr)
  wire [15:0] ashr_736_739_740__in0;
  wire [15:0] ashr_736_739_740__in1;
  wire [15:0] ashr_736_739_740__out;
  coreir_ashr #(.width(16)) ashr_736_739_740(
    .in0(ashr_736_739_740__in0),
    .in1(ashr_736_739_740__in1),
    .out(ashr_736_739_740__out)
  );

  //Wire declarations for instance 'ashr_737_739_741' (Module coreir_ashr)
  wire [15:0] ashr_737_739_741__in0;
  wire [15:0] ashr_737_739_741__in1;
  wire [15:0] ashr_737_739_741__out;
  coreir_ashr #(.width(16)) ashr_737_739_741(
    .in0(ashr_737_739_741__in0),
    .in1(ashr_737_739_741__in1),
    .out(ashr_737_739_741__out)
  );

  //Wire declarations for instance 'ashr_738_739_744' (Module coreir_ashr)
  wire [15:0] ashr_738_739_744__in0;
  wire [15:0] ashr_738_739_744__in1;
  wire [15:0] ashr_738_739_744__out;
  coreir_ashr #(.width(16)) ashr_738_739_744(
    .in0(ashr_738_739_744__in0),
    .in1(ashr_738_739_744__in1),
    .out(ashr_738_739_744__out)
  );

  //Wire declarations for instance 'ashr_747_748_749' (Module coreir_ashr)
  wire [15:0] ashr_747_748_749__in0;
  wire [15:0] ashr_747_748_749__in1;
  wire [15:0] ashr_747_748_749__out;
  coreir_ashr #(.width(16)) ashr_747_748_749(
    .in0(ashr_747_748_749__in0),
    .in1(ashr_747_748_749__in1),
    .out(ashr_747_748_749__out)
  );

  //Wire declarations for instance 'bitand_767_768_769' (Module corebit_and)
  wire  bitand_767_768_769__in0;
  wire  bitand_767_768_769__in1;
  wire  bitand_767_768_769__out;
  corebit_and bitand_767_768_769(
    .in0(bitand_767_768_769__in0),
    .in1(bitand_767_768_769__in1),
    .out(bitand_767_768_769__out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0__out;
  coreir_const #(.value(16'd0),.width(16)) const0_0(
    .out(const0_0__out)
  );

  //Wire declarations for instance 'const0_0$1' (Module coreir_const)
  wire [15:0] const0_0$1__out;
  coreir_const #(.value(16'd0),.width(16)) const0_0$1(
    .out(const0_0$1__out)
  );

  //Wire declarations for instance 'const0_0$2' (Module coreir_const)
  wire [15:0] const0_0$2__out;
  coreir_const #(.value(16'd0),.width(16)) const0_0$2(
    .out(const0_0$2__out)
  );

  //Wire declarations for instance 'const0__771$1' (Module coreir_const)
  wire [15:0] const0__771$1__out;
  coreir_const #(.value(16'd0),.width(16)) const0__771$1(
    .out(const0__771$1__out)
  );

  //Wire declarations for instance 'const100_100' (Module coreir_const)
  wire [15:0] const100_100__out;
  coreir_const #(.value(16'd100),.width(16)) const100_100(
    .out(const100_100__out)
  );

  //Wire declarations for instance 'const255__770' (Module coreir_const)
  wire [15:0] const255__770__out;
  coreir_const #(.value(16'd255),.width(16)) const255__770(
    .out(const255__770__out)
  );

  //Wire declarations for instance 'const2__635' (Module coreir_const)
  wire [15:0] const2__635__out;
  coreir_const #(.value(16'd2),.width(16)) const2__635(
    .out(const2__635__out)
  );

  //Wire declarations for instance 'const2__635$1' (Module coreir_const)
  wire [15:0] const2__635$1__out;
  coreir_const #(.value(16'd2),.width(16)) const2__635$1(
    .out(const2__635$1__out)
  );

  //Wire declarations for instance 'const2__677' (Module coreir_const)
  wire [15:0] const2__677__out;
  coreir_const #(.value(16'd2),.width(16)) const2__677(
    .out(const2__677__out)
  );

  //Wire declarations for instance 'const2__677$1' (Module coreir_const)
  wire [15:0] const2__677$1__out;
  coreir_const #(.value(16'd2),.width(16)) const2__677$1(
    .out(const2__677$1__out)
  );

  //Wire declarations for instance 'const4__748' (Module coreir_const)
  wire [15:0] const4__748__out;
  coreir_const #(.value(16'd4),.width(16)) const4__748(
    .out(const4__748__out)
  );

  //Wire declarations for instance 'const7__739' (Module coreir_const)
  wire [15:0] const7__739__out;
  coreir_const #(.value(16'd7),.width(16)) const7__739(
    .out(const7__739__out)
  );

  //Wire declarations for instance 'const7__739$1' (Module coreir_const)
  wire [15:0] const7__739$1__out;
  coreir_const #(.value(16'd7),.width(16)) const7__739$1(
    .out(const7__739$1__out)
  );

  //Wire declarations for instance 'const7__739$2' (Module coreir_const)
  wire [15:0] const7__739$2__out;
  coreir_const #(.value(16'd7),.width(16)) const7__739$2(
    .out(const7__739$2__out)
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

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$mem__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem__rdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_xx_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_grad_xx_2_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_grad_xx_2_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_grad_xx_2_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_grad_xx_2_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_grad_xx_2_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$veq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$veq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$veq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_grad_xx_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_xx_2_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$mem__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem__rdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_xx_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_grad_xx_2_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_grad_xx_2_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_grad_xx_2_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_grad_xx_2_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_grad_xx_2_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$veq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$veq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$veq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_grad_xx_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_xx_2_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_0_1__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_1__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_0_1__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_0_1__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_0_1__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_0_2__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_2__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_0_2__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_0_2__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_0_2__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_1_1__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_1__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_1_1__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_1_1__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_1_1__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_1_2__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_2__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_1_2__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_1_2__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_1_2__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_2_1__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_1__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_2_1__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_2_1__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_2_1__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_2_2__clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_2__in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_2_2__clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_2_2__in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_2_2__out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_xx_2_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_grad_xx_2_stencil_update_stream_wen(
    .out(lb_grad_xx_2_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$mem__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem__rdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_xy_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_grad_xy_2_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_grad_xy_2_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_grad_xy_2_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_grad_xy_2_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_grad_xy_2_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$veq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$veq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$veq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_grad_xy_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_xy_2_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$mem__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem__rdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_xy_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_grad_xy_2_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_grad_xy_2_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_grad_xy_2_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_grad_xy_2_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_grad_xy_2_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$veq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$veq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$veq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_grad_xy_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_xy_2_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_0_1__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_1__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_0_1__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_0_1__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_0_1__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_0_2__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_2__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_0_2__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_0_2__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_0_2__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_1_1__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_1__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_1_1__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_1_1__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_1_1__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_1_2__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_2__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_1_2__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_1_2__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_1_2__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_2_1__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_1__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_2_1__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_2_1__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_2_1__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_2_2__clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_2__in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_2_2__clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_2_2__in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_2_2__out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_xy_2_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_grad_xy_2_stencil_update_stream_wen(
    .out(lb_grad_xy_2_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$mem__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem__rdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_yy_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_grad_yy_2_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_grad_yy_2_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_grad_yy_2_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_grad_yy_2_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_grad_yy_2_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$veq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$veq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$veq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_grad_yy_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_yy_2_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$mem__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem__rdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(484),.width(16)) lb_grad_yy_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_grad_yy_2_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_grad_yy_2_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_grad_yy_2_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_grad_yy_2_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_grad_yy_2_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$veq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$veq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$veq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_grad_yy_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_yy_2_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_0_1__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_1__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_0_1__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_0_1__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_0_1__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_0_2__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_2__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_0_2__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_0_2__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_0_2__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_1_1__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_1__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_1_1__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_1_1__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_1_1__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_1_2__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_2__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_1_2__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_1_2__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_1_2__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_2_1__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_1__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_2_1__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_2_1__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_2_1__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_2_2__clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_2__in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_2_2__clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_2_2__in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_2_2__out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_yy_2_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_grad_yy_2_stencil_update_stream_wen(
    .out(lb_grad_yy_2_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$add_r(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$add_w(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$c1(
    .out(lb_p3_cim_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(9'd482),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$max_const(
    .out(lb_p3_cim_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_p3_cim_stencil_update_stream$mem_1$mem__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_1$mem__rdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_p3_cim_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(482),.width(16)) lb_p3_cim_stencil_update_stream$mem_1$mem(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_p3_cim_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_p3_cim_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_p3_cim_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_p3_cim_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_p3_cim_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$veq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$veq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$veq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$veq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$zero_const(
    .out(lb_p3_cim_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_p3_cim_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_p3_cim_stencil_update_stream$mem_1_valid_term(
    .in(lb_p3_cim_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$add_r(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$add_w(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$c1(
    .out(lb_p3_cim_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(9'd482),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$max_const(
    .out(lb_p3_cim_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_p3_cim_stencil_update_stream$mem_2$mem__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_2$mem__rdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_p3_cim_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(482),.width(16)) lb_p3_cim_stencil_update_stream$mem_2$mem(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_p3_cim_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_p3_cim_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_p3_cim_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_p3_cim_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_p3_cim_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$veq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$veq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$veq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$veq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$zero_const(
    .out(lb_p3_cim_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_p3_cim_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_p3_cim_stencil_update_stream$mem_2_valid_term(
    .in(lb_p3_cim_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_0_1__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_1__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_0_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_0_1__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_0_1__in),
    .out(lb_p3_cim_stencil_update_stream$reg_0_1__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_0_2__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_2__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_0_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_0_2__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_0_2__in),
    .out(lb_p3_cim_stencil_update_stream$reg_0_2__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_1_1__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_1__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_1_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_1_1__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_1_1__in),
    .out(lb_p3_cim_stencil_update_stream$reg_1_1__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_1_2__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_2__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_1_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_1_2__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_1_2__in),
    .out(lb_p3_cim_stencil_update_stream$reg_1_2__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_2_1__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_1__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_2_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_2_1__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_2_1__in),
    .out(lb_p3_cim_stencil_update_stream$reg_2_1__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_2_2__clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_2__in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_2_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_2_2__clk),
    .in(lb_p3_cim_stencil_update_stream$reg_2_2__in),
    .out(lb_p3_cim_stencil_update_stream$reg_2_2__out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p3_cim_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_p3_cim_stencil_update_stream_wen(
    .out(lb_p3_cim_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r__out;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_padded_2_stencil_update_stream$mem_1$add_r__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$add_r__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$add_r__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w__out;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_padded_2_stencil_update_stream$mem_1$add_w__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$add_w__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$add_w__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_padded_2_stencil_update_stream$mem_1$c1(
    .out(lb_padded_2_stencil_update_stream$mem_1$c1__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$max_const__out;
  coreir_const #(.value(9'd486),.width(9)) lb_padded_2_stencil_update_stream$mem_1$max_const(
    .out(lb_padded_2_stencil_update_stream$mem_1$max_const__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_padded_2_stencil_update_stream$mem_1$mem__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$mem__raddr;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_1$mem__rdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$mem__waddr;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_1$mem__wdata;
  wire  lb_padded_2_stencil_update_stream$mem_1$mem__wen;
  mem #(.depth(486),.width(16)) lb_padded_2_stencil_update_stream$mem_1$mem(
    .clk(lb_padded_2_stencil_update_stream$mem_1$mem__clk),
    .raddr(lb_padded_2_stencil_update_stream$mem_1$mem__raddr),
    .rdata(lb_padded_2_stencil_update_stream$mem_1$mem__rdata),
    .waddr(lb_padded_2_stencil_update_stream$mem_1$mem__waddr),
    .wdata(lb_padded_2_stencil_update_stream$mem_1$mem__wdata),
    .wen(lb_padded_2_stencil_update_stream$mem_1$mem__wen)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__out;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__clk),
    .in(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__in),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr_eq__out;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux__out;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr_mux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$veq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$veq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$veq__out;
  coreir_neq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$veq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$veq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$veq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$veq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__out;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__clk),
    .in(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__in),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr_eq__out;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux__out;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr_mux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_padded_2_stencil_update_stream$mem_1$zero_const__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_padded_2_stencil_update_stream$mem_1_valid_term__in;
  corebit_term lb_padded_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_padded_2_stencil_update_stream$mem_1_valid_term__in)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r__out;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_padded_2_stencil_update_stream$mem_2$add_r__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$add_r__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$add_r__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w__out;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_padded_2_stencil_update_stream$mem_2$add_w__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$add_w__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$add_w__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$c1__out;
  coreir_const #(.value(9'd1),.width(9)) lb_padded_2_stencil_update_stream$mem_2$c1(
    .out(lb_padded_2_stencil_update_stream$mem_2$c1__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$max_const__out;
  coreir_const #(.value(9'd486),.width(9)) lb_padded_2_stencil_update_stream$mem_2$max_const(
    .out(lb_padded_2_stencil_update_stream$mem_2$max_const__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_padded_2_stencil_update_stream$mem_2$mem__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$mem__raddr;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_2$mem__rdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$mem__waddr;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_2$mem__wdata;
  wire  lb_padded_2_stencil_update_stream$mem_2$mem__wen;
  mem #(.depth(486),.width(16)) lb_padded_2_stencil_update_stream$mem_2$mem(
    .clk(lb_padded_2_stencil_update_stream$mem_2$mem__clk),
    .raddr(lb_padded_2_stencil_update_stream$mem_2$mem__raddr),
    .rdata(lb_padded_2_stencil_update_stream$mem_2$mem__rdata),
    .waddr(lb_padded_2_stencil_update_stream$mem_2$mem__waddr),
    .wdata(lb_padded_2_stencil_update_stream$mem_2$mem__wdata),
    .wen(lb_padded_2_stencil_update_stream$mem_2$mem__wen)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__out;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__clk),
    .in(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__in),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr_eq__out;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr_eq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux__out;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr_mux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr_mux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$raddr_mux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$veq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$veq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$veq__out;
  coreir_neq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$veq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$veq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$veq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$veq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__out;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__clk),
    .in(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__in),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr_eq__out;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr_eq__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in1;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux__out;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr_mux__sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr_mux__out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$waddr_mux__sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$zero_const__out;
  coreir_const #(.value(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_padded_2_stencil_update_stream$mem_2$zero_const__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_padded_2_stencil_update_stream$mem_2_valid_term__in;
  corebit_term lb_padded_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_padded_2_stencil_update_stream$mem_2_valid_term__in)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_0_1__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_1__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_0_1(
    .clk(lb_padded_2_stencil_update_stream$reg_0_1__clk),
    .in(lb_padded_2_stencil_update_stream$reg_0_1__in),
    .out(lb_padded_2_stencil_update_stream$reg_0_1__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_0_2__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_2__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_0_2(
    .clk(lb_padded_2_stencil_update_stream$reg_0_2__clk),
    .in(lb_padded_2_stencil_update_stream$reg_0_2__in),
    .out(lb_padded_2_stencil_update_stream$reg_0_2__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_1_1__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_1__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_1_1(
    .clk(lb_padded_2_stencil_update_stream$reg_1_1__clk),
    .in(lb_padded_2_stencil_update_stream$reg_1_1__in),
    .out(lb_padded_2_stencil_update_stream$reg_1_1__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_1_2__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_2__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_1_2(
    .clk(lb_padded_2_stencil_update_stream$reg_1_2__clk),
    .in(lb_padded_2_stencil_update_stream$reg_1_2__in),
    .out(lb_padded_2_stencil_update_stream$reg_1_2__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_2_1__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_1__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_1__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_2_1(
    .clk(lb_padded_2_stencil_update_stream$reg_2_1__clk),
    .in(lb_padded_2_stencil_update_stream$reg_2_1__in),
    .out(lb_padded_2_stencil_update_stream$reg_2_1__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_2_2__clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_2__in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_2__out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_2_2(
    .clk(lb_padded_2_stencil_update_stream$reg_2_2__clk),
    .in(lb_padded_2_stencil_update_stream$reg_2_2__in),
    .out(lb_padded_2_stencil_update_stream$reg_2_2__out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_padded_2_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_padded_2_stencil_update_stream_wen(
    .out(lb_padded_2_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'mul_634_635_636' (Module coreir_mul)
  wire [15:0] mul_634_635_636__in0;
  wire [15:0] mul_634_635_636__in1;
  wire [15:0] mul_634_635_636__out;
  coreir_mul #(.width(16)) mul_634_635_636(
    .in0(mul_634_635_636__in0),
    .in1(mul_634_635_636__in1),
    .out(mul_634_635_636__out)
  );

  //Wire declarations for instance 'mul_639_635_640' (Module coreir_mul)
  wire [15:0] mul_639_635_640__in0;
  wire [15:0] mul_639_635_640__in1;
  wire [15:0] mul_639_635_640__out;
  coreir_mul #(.width(16)) mul_639_635_640(
    .in0(mul_639_635_640__in0),
    .in1(mul_639_635_640__in1),
    .out(mul_639_635_640__out)
  );

  //Wire declarations for instance 'mul_649_649_650' (Module coreir_mul)
  wire [15:0] mul_649_649_650__in0;
  wire [15:0] mul_649_649_650__in1;
  wire [15:0] mul_649_649_650__out;
  coreir_mul #(.width(16)) mul_649_649_650(
    .in0(mul_649_649_650__in0),
    .in1(mul_649_649_650__in1),
    .out(mul_649_649_650__out)
  );

  //Wire declarations for instance 'mul_676_677_678' (Module coreir_mul)
  wire [15:0] mul_676_677_678__in0;
  wire [15:0] mul_676_677_678__in1;
  wire [15:0] mul_676_677_678__out;
  coreir_mul #(.width(16)) mul_676_677_678(
    .in0(mul_676_677_678__in0),
    .in1(mul_676_677_678__in1),
    .out(mul_676_677_678__out)
  );

  //Wire declarations for instance 'mul_681_677_682' (Module coreir_mul)
  wire [15:0] mul_681_677_682__in0;
  wire [15:0] mul_681_677_682__in1;
  wire [15:0] mul_681_677_682__out;
  coreir_mul #(.width(16)) mul_681_677_682(
    .in0(mul_681_677_682__in0),
    .in1(mul_681_677_682__in1),
    .out(mul_681_677_682__out)
  );

  //Wire declarations for instance 'mul_691_693_694' (Module coreir_mul)
  wire [15:0] mul_691_693_694__in0;
  wire [15:0] mul_691_693_694__in1;
  wire [15:0] mul_691_693_694__out;
  coreir_mul #(.width(16)) mul_691_693_694(
    .in0(mul_691_693_694__in0),
    .in1(mul_691_693_694__in1),
    .out(mul_691_693_694__out)
  );

  //Wire declarations for instance 'mul_715_715_716' (Module coreir_mul)
  wire [15:0] mul_715_715_716__in0;
  wire [15:0] mul_715_715_716__in1;
  wire [15:0] mul_715_715_716__out;
  coreir_mul #(.width(16)) mul_715_715_716(
    .in0(mul_715_715_716__in0),
    .in1(mul_715_715_716__in1),
    .out(mul_715_715_716__out)
  );

  //Wire declarations for instance 'mul_740_741_743' (Module coreir_mul)
  wire [15:0] mul_740_741_743__in0;
  wire [15:0] mul_740_741_743__in1;
  wire [15:0] mul_740_741_743__out;
  coreir_mul #(.width(16)) mul_740_741_743(
    .in0(mul_740_741_743__in0),
    .in1(mul_740_741_743__in1),
    .out(mul_740_741_743__out)
  );

  //Wire declarations for instance 'mul_742_742_747' (Module coreir_mul)
  wire [15:0] mul_742_742_747__in0;
  wire [15:0] mul_742_742_747__in1;
  wire [15:0] mul_742_742_747__out;
  coreir_mul #(.width(16)) mul_742_742_747(
    .in0(mul_742_742_747__in0),
    .in1(mul_742_742_747__in1),
    .out(mul_742_742_747__out)
  );

  //Wire declarations for instance 'mul_744_744_745' (Module coreir_mul)
  wire [15:0] mul_744_744_745__in0;
  wire [15:0] mul_744_744_745__in1;
  wire [15:0] mul_744_744_745__out;
  coreir_mul #(.width(16)) mul_744_744_745(
    .in0(mul_744_744_745__in0),
    .in1(mul_744_744_745__in1),
    .out(mul_744_744_745__out)
  );

  //Wire declarations for instance 'mux_769_770_771' (Module coreir_mux)
  wire [15:0] mux_769_770_771__in0;
  wire [15:0] mux_769_770_771__in1;
  wire [15:0] mux_769_770_771__out;
  wire  mux_769_770_771__sel;
  coreir_mux #(.width(16)) mux_769_770_771(
    .in0(mux_769_770_771__in0),
    .in1(mux_769_770_771__in1),
    .out(mux_769_770_771__out),
    .sel(mux_769_770_771__sel)
  );

  //Wire declarations for instance 'smax_752_753_754$max_mux' (Module coreir_mux)
  wire [15:0] smax_752_753_754$max_mux__in0;
  wire [15:0] smax_752_753_754$max_mux__in1;
  wire [15:0] smax_752_753_754$max_mux__out;
  wire  smax_752_753_754$max_mux__sel;
  coreir_mux #(.width(16)) smax_752_753_754$max_mux(
    .in0(smax_752_753_754$max_mux__in0),
    .in1(smax_752_753_754$max_mux__in1),
    .out(smax_752_753_754$max_mux__out),
    .sel(smax_752_753_754$max_mux__sel)
  );

  //Wire declarations for instance 'smax_752_753_754$scomp' (Module coreir_sge)
  wire [15:0] smax_752_753_754$scomp__in0;
  wire [15:0] smax_752_753_754$scomp__in1;
  wire  smax_752_753_754$scomp__out;
  coreir_sge #(.width(16)) smax_752_753_754$scomp(
    .in0(smax_752_753_754$scomp__in0),
    .in1(smax_752_753_754$scomp__in1),
    .out(smax_752_753_754$scomp__out)
  );

  //Wire declarations for instance 'smax_754_755_756$max_mux' (Module coreir_mux)
  wire [15:0] smax_754_755_756$max_mux__in0;
  wire [15:0] smax_754_755_756$max_mux__in1;
  wire [15:0] smax_754_755_756$max_mux__out;
  wire  smax_754_755_756$max_mux__sel;
  coreir_mux #(.width(16)) smax_754_755_756$max_mux(
    .in0(smax_754_755_756$max_mux__in0),
    .in1(smax_754_755_756$max_mux__in1),
    .out(smax_754_755_756$max_mux__out),
    .sel(smax_754_755_756$max_mux__sel)
  );

  //Wire declarations for instance 'smax_754_755_756$scomp' (Module coreir_sge)
  wire [15:0] smax_754_755_756$scomp__in0;
  wire [15:0] smax_754_755_756$scomp__in1;
  wire  smax_754_755_756$scomp__out;
  coreir_sge #(.width(16)) smax_754_755_756$scomp(
    .in0(smax_754_755_756$scomp__in0),
    .in1(smax_754_755_756$scomp__in1),
    .out(smax_754_755_756$scomp__out)
  );

  //Wire declarations for instance 'smax_756_757_758$max_mux' (Module coreir_mux)
  wire [15:0] smax_756_757_758$max_mux__in0;
  wire [15:0] smax_756_757_758$max_mux__in1;
  wire [15:0] smax_756_757_758$max_mux__out;
  wire  smax_756_757_758$max_mux__sel;
  coreir_mux #(.width(16)) smax_756_757_758$max_mux(
    .in0(smax_756_757_758$max_mux__in0),
    .in1(smax_756_757_758$max_mux__in1),
    .out(smax_756_757_758$max_mux__out),
    .sel(smax_756_757_758$max_mux__sel)
  );

  //Wire declarations for instance 'smax_756_757_758$scomp' (Module coreir_sge)
  wire [15:0] smax_756_757_758$scomp__in0;
  wire [15:0] smax_756_757_758$scomp__in1;
  wire  smax_756_757_758$scomp__out;
  coreir_sge #(.width(16)) smax_756_757_758$scomp(
    .in0(smax_756_757_758$scomp__in0),
    .in1(smax_756_757_758$scomp__in1),
    .out(smax_756_757_758$scomp__out)
  );

  //Wire declarations for instance 'smax_758_759_760$max_mux' (Module coreir_mux)
  wire [15:0] smax_758_759_760$max_mux__in0;
  wire [15:0] smax_758_759_760$max_mux__in1;
  wire [15:0] smax_758_759_760$max_mux__out;
  wire  smax_758_759_760$max_mux__sel;
  coreir_mux #(.width(16)) smax_758_759_760$max_mux(
    .in0(smax_758_759_760$max_mux__in0),
    .in1(smax_758_759_760$max_mux__in1),
    .out(smax_758_759_760$max_mux__out),
    .sel(smax_758_759_760$max_mux__sel)
  );

  //Wire declarations for instance 'smax_758_759_760$scomp' (Module coreir_sge)
  wire [15:0] smax_758_759_760$scomp__in0;
  wire [15:0] smax_758_759_760$scomp__in1;
  wire  smax_758_759_760$scomp__out;
  coreir_sge #(.width(16)) smax_758_759_760$scomp(
    .in0(smax_758_759_760$scomp__in0),
    .in1(smax_758_759_760$scomp__in1),
    .out(smax_758_759_760$scomp__out)
  );

  //Wire declarations for instance 'smax_760_761_762$max_mux' (Module coreir_mux)
  wire [15:0] smax_760_761_762$max_mux__in0;
  wire [15:0] smax_760_761_762$max_mux__in1;
  wire [15:0] smax_760_761_762$max_mux__out;
  wire  smax_760_761_762$max_mux__sel;
  coreir_mux #(.width(16)) smax_760_761_762$max_mux(
    .in0(smax_760_761_762$max_mux__in0),
    .in1(smax_760_761_762$max_mux__in1),
    .out(smax_760_761_762$max_mux__out),
    .sel(smax_760_761_762$max_mux__sel)
  );

  //Wire declarations for instance 'smax_760_761_762$scomp' (Module coreir_sge)
  wire [15:0] smax_760_761_762$scomp__in0;
  wire [15:0] smax_760_761_762$scomp__in1;
  wire  smax_760_761_762$scomp__out;
  coreir_sge #(.width(16)) smax_760_761_762$scomp(
    .in0(smax_760_761_762$scomp__in0),
    .in1(smax_760_761_762$scomp__in1),
    .out(smax_760_761_762$scomp__out)
  );

  //Wire declarations for instance 'smax_762_763_764$max_mux' (Module coreir_mux)
  wire [15:0] smax_762_763_764$max_mux__in0;
  wire [15:0] smax_762_763_764$max_mux__in1;
  wire [15:0] smax_762_763_764$max_mux__out;
  wire  smax_762_763_764$max_mux__sel;
  coreir_mux #(.width(16)) smax_762_763_764$max_mux(
    .in0(smax_762_763_764$max_mux__in0),
    .in1(smax_762_763_764$max_mux__in1),
    .out(smax_762_763_764$max_mux__out),
    .sel(smax_762_763_764$max_mux__sel)
  );

  //Wire declarations for instance 'smax_762_763_764$scomp' (Module coreir_sge)
  wire [15:0] smax_762_763_764$scomp__in0;
  wire [15:0] smax_762_763_764$scomp__in1;
  wire  smax_762_763_764$scomp__out;
  coreir_sge #(.width(16)) smax_762_763_764$scomp(
    .in0(smax_762_763_764$scomp__in0),
    .in1(smax_762_763_764$scomp__in1),
    .out(smax_762_763_764$scomp__out)
  );

  //Wire declarations for instance 'smax_764_765_766$max_mux' (Module coreir_mux)
  wire [15:0] smax_764_765_766$max_mux__in0;
  wire [15:0] smax_764_765_766$max_mux__in1;
  wire [15:0] smax_764_765_766$max_mux__out;
  wire  smax_764_765_766$max_mux__sel;
  coreir_mux #(.width(16)) smax_764_765_766$max_mux(
    .in0(smax_764_765_766$max_mux__in0),
    .in1(smax_764_765_766$max_mux__in1),
    .out(smax_764_765_766$max_mux__out),
    .sel(smax_764_765_766$max_mux__sel)
  );

  //Wire declarations for instance 'smax_764_765_766$scomp' (Module coreir_sge)
  wire [15:0] smax_764_765_766$scomp__in0;
  wire [15:0] smax_764_765_766$scomp__in1;
  wire  smax_764_765_766$scomp__out;
  coreir_sge #(.width(16)) smax_764_765_766$scomp(
    .in0(smax_764_765_766$scomp__in0),
    .in1(smax_764_765_766$scomp__in1),
    .out(smax_764_765_766$scomp__out)
  );

  //Wire declarations for instance 'sub_629_631_632' (Module coreir_sub)
  wire [15:0] sub_629_631_632__in0;
  wire [15:0] sub_629_631_632__in1;
  wire [15:0] sub_629_631_632__out;
  coreir_sub #(.width(16)) sub_629_631_632(
    .in0(sub_629_631_632__in0),
    .in1(sub_629_631_632__in1),
    .out(sub_629_631_632__out)
  );

  //Wire declarations for instance 'sub_632_636_637' (Module coreir_sub)
  wire [15:0] sub_632_636_637__in0;
  wire [15:0] sub_632_636_637__in1;
  wire [15:0] sub_632_636_637__out;
  coreir_sub #(.width(16)) sub_632_636_637(
    .in0(sub_632_636_637__in0),
    .in1(sub_632_636_637__in1),
    .out(sub_632_636_637__out)
  );

  //Wire declarations for instance 'sub_641_643_644' (Module coreir_sub)
  wire [15:0] sub_641_643_644__in0;
  wire [15:0] sub_641_643_644__in1;
  wire [15:0] sub_641_643_644__out;
  coreir_sub #(.width(16)) sub_641_643_644(
    .in0(sub_641_643_644__in0),
    .in1(sub_641_643_644__in1),
    .out(sub_641_643_644__out)
  );

  //Wire declarations for instance 'sub_671_673_674' (Module coreir_sub)
  wire [15:0] sub_671_673_674__in0;
  wire [15:0] sub_671_673_674__in1;
  wire [15:0] sub_671_673_674__out;
  coreir_sub #(.width(16)) sub_671_673_674(
    .in0(sub_671_673_674__in0),
    .in1(sub_671_673_674__in1),
    .out(sub_671_673_674__out)
  );

  //Wire declarations for instance 'sub_679_682_683' (Module coreir_sub)
  wire [15:0] sub_679_682_683__in0;
  wire [15:0] sub_679_682_683__in1;
  wire [15:0] sub_679_682_683__out;
  coreir_sub #(.width(16)) sub_679_682_683(
    .in0(sub_679_682_683__in0),
    .in1(sub_679_682_683__in1),
    .out(sub_679_682_683__out)
  );

  //Wire declarations for instance 'sub_686_688_689' (Module coreir_sub)
  wire [15:0] sub_686_688_689__in0;
  wire [15:0] sub_686_688_689__in1;
  wire [15:0] sub_686_688_689__out;
  coreir_sub #(.width(16)) sub_686_688_689(
    .in0(sub_686_688_689__in0),
    .in1(sub_686_688_689__in1),
    .out(sub_686_688_689__out)
  );

  //Wire declarations for instance 'sub_743_745_746' (Module coreir_sub)
  wire [15:0] sub_743_745_746__in0;
  wire [15:0] sub_743_745_746__in1;
  wire [15:0] sub_743_745_746__out;
  coreir_sub #(.width(16)) sub_743_745_746(
    .in0(sub_743_745_746__in0),
    .in1(sub_743_745_746__in1),
    .out(sub_743_745_746__out)
  );

  //Wire declarations for instance 'sub_746_749_750' (Module coreir_sub)
  wire [15:0] sub_746_749_750__in0;
  wire [15:0] sub_746_749_750__in1;
  wire [15:0] sub_746_749_750__out;
  coreir_sub #(.width(16)) sub_746_749_750(
    .in0(sub_746_749_750__in0),
    .in1(sub_746_749_750__in1),
    .out(sub_746_749_750__out)
  );

  //Wire declarations for instance 'ule100_751_768' (Module coreir_ule)
  wire [15:0] ule100_751_768__in0;
  wire [15:0] ule100_751_768__in1;
  wire  ule100_751_768__out;
  coreir_ule #(.width(16)) ule100_751_768(
    .in0(ule100_751_768__in0),
    .in1(ule100_751_768__in1),
    .out(ule100_751_768__out)
  );

  //Wire declarations for instance 'ult_766_751_767' (Module coreir_ult)
  wire [15:0] ult_766_751_767__in0;
  wire [15:0] ult_766_751_767__in1;
  wire  ult_766_751_767__out;
  coreir_ult #(.width(16)) ult_766_751_767(
    .in0(ult_766_751_767__in0),
    .in1(ult_766_751_767__in1),
    .out(ult_766_751_767__out)
  );

  //All the connections
  assign add_637_640_641__in0[15:0] = sub_632_636_637__out[15:0];
  assign add_637_640_641__in1[15:0] = mul_639_635_640__out[15:0];
  assign sub_641_643_644__in0[15:0] = add_637_640_641__out[15:0];
  assign add_644_646_647__in0[15:0] = sub_641_643_644__out[15:0];
  assign add_644_646_647__in1[15:0] = in_0_auto_reg__out[15:0];
  assign mul_649_649_650__in0[15:0] = add_644_646_647__out[15:0];
  assign mul_649_649_650__in1[15:0] = add_644_646_647__out[15:0];
  assign mul_691_693_694__in0[15:0] = add_644_646_647__out[15:0];
  assign add_651_652_653__in0[15:0] = const0_0__out[15:0];
  assign add_651_652_653__in1[15:0] = mul_649_649_650__out[15:0];
  assign add_651_654_655__in0[15:0] = add_651_652_653__out[15:0];
  assign add_651_654_655__in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_2_1__out[15:0];
  assign add_651_656_657__in0[15:0] = add_651_654_655__out[15:0];
  assign add_651_656_657__in1[15:0] = lb_grad_xx_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign add_651_658_659__in0[15:0] = add_651_656_657__out[15:0];
  assign add_651_658_659__in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_2__out[15:0];
  assign add_651_660_661__in0[15:0] = add_651_658_659__out[15:0];
  assign add_651_660_661__in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_1__out[15:0];
  assign add_651_662_663__in0[15:0] = add_651_660_661__out[15:0];
  assign add_651_662_663__in1[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign add_651_664_665__in0[15:0] = add_651_662_663__out[15:0];
  assign add_651_664_665__in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_2__out[15:0];
  assign add_651_666_667__in0[15:0] = add_651_664_665__out[15:0];
  assign add_651_666_667__in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_1__out[15:0];
  assign add_651_668_669__in0[15:0] = add_651_666_667__out[15:0];
  assign add_651_668_669__in1[15:0] = mul_649_649_650__out[15:0];
  assign ashr_736_739_740__in0[15:0] = add_651_668_669__out[15:0];
  assign add_674_678_679__in0[15:0] = sub_671_673_674__out[15:0];
  assign add_674_678_679__in1[15:0] = mul_676_677_678__out[15:0];
  assign sub_679_682_683__in0[15:0] = add_674_678_679__out[15:0];
  assign add_683_685_686__in0[15:0] = sub_679_682_683__out[15:0];
  assign add_683_685_686__in1[15:0] = in_0_auto_reg__out[15:0];
  assign sub_686_688_689__in0[15:0] = add_683_685_686__out[15:0];
  assign add_695_696_697__in0[15:0] = const0_0$1__out[15:0];
  assign add_695_696_697__in1[15:0] = mul_691_693_694__out[15:0];
  assign add_695_698_699__in0[15:0] = add_695_696_697__out[15:0];
  assign add_695_698_699__in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_2_1__out[15:0];
  assign add_695_700_701__in0[15:0] = add_695_698_699__out[15:0];
  assign add_695_700_701__in1[15:0] = lb_grad_xy_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign add_695_702_703__in0[15:0] = add_695_700_701__out[15:0];
  assign add_695_702_703__in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_2__out[15:0];
  assign add_695_704_705__in0[15:0] = add_695_702_703__out[15:0];
  assign add_695_704_705__in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_1__out[15:0];
  assign add_695_706_707__in0[15:0] = add_695_704_705__out[15:0];
  assign add_695_706_707__in1[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign add_695_708_709__in0[15:0] = add_695_706_707__out[15:0];
  assign add_695_708_709__in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_2__out[15:0];
  assign add_695_710_711__in0[15:0] = add_695_708_709__out[15:0];
  assign add_695_710_711__in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_1__out[15:0];
  assign add_695_712_713__in0[15:0] = add_695_710_711__out[15:0];
  assign add_695_712_713__in1[15:0] = mul_691_693_694__out[15:0];
  assign ashr_738_739_744__in0[15:0] = add_695_712_713__out[15:0];
  assign add_717_718_719__in0[15:0] = const0_0$2__out[15:0];
  assign add_717_718_719__in1[15:0] = mul_715_715_716__out[15:0];
  assign add_717_720_721__in0[15:0] = add_717_718_719__out[15:0];
  assign add_717_720_721__in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_2_1__out[15:0];
  assign add_717_722_723__in0[15:0] = add_717_720_721__out[15:0];
  assign add_717_722_723__in1[15:0] = lb_grad_yy_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign add_717_724_725__in0[15:0] = add_717_722_723__out[15:0];
  assign add_717_724_725__in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_2__out[15:0];
  assign add_717_726_727__in0[15:0] = add_717_724_725__out[15:0];
  assign add_717_726_727__in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_1__out[15:0];
  assign add_717_728_729__in0[15:0] = add_717_726_727__out[15:0];
  assign add_717_728_729__in1[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign add_717_730_731__in0[15:0] = add_717_728_729__out[15:0];
  assign add_717_730_731__in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_2__out[15:0];
  assign add_717_732_733__in0[15:0] = add_717_730_731__out[15:0];
  assign add_717_732_733__in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_1__out[15:0];
  assign add_717_734_735__in0[15:0] = add_717_732_733__out[15:0];
  assign add_717_734_735__in1[15:0] = mul_715_715_716__out[15:0];
  assign ashr_737_739_741__in0[15:0] = add_717_734_735__out[15:0];
  assign add_740_741_742__in0[15:0] = ashr_736_739_740__out[15:0];
  assign add_740_741_742__in1[15:0] = ashr_737_739_741__out[15:0];
  assign mul_742_742_747__in0[15:0] = add_740_741_742__out[15:0];
  assign mul_742_742_747__in1[15:0] = add_740_741_742__out[15:0];
  assign ashr_736_739_740__in1[15:0] = const7__739__out[15:0];
  assign mul_740_741_743__in0[15:0] = ashr_736_739_740__out[15:0];
  assign ashr_737_739_741__in1[15:0] = const7__739$1__out[15:0];
  assign mul_740_741_743__in1[15:0] = ashr_737_739_741__out[15:0];
  assign ashr_738_739_744__in1[15:0] = const7__739$2__out[15:0];
  assign mul_744_744_745__in0[15:0] = ashr_738_739_744__out[15:0];
  assign mul_744_744_745__in1[15:0] = ashr_738_739_744__out[15:0];
  assign ashr_747_748_749__in0[15:0] = mul_742_742_747__out[15:0];
  assign ashr_747_748_749__in1[15:0] = const4__748__out[15:0];
  assign sub_746_749_750__in1[15:0] = ashr_747_748_749__out[15:0];
  assign bitand_767_768_769__in0 = ult_766_751_767__out;
  assign bitand_767_768_769__in1 = ule100_751_768__out;
  assign mux_769_770_771__sel = bitand_767_768_769__out;
  assign mux_769_770_771__in1[15:0] = const0__771$1__out[15:0];
  assign ule100_751_768__in0[15:0] = const100_100__out[15:0];
  assign mux_769_770_771__in0[15:0] = const255__770__out[15:0];
  assign mul_634_635_636__in1[15:0] = const2__635__out[15:0];
  assign mul_639_635_640__in1[15:0] = const2__635$1__out[15:0];
  assign mul_676_677_678__in1[15:0] = const2__677__out[15:0];
  assign mul_681_677_682__in1[15:0] = const2__677$1__out[15:0];
  assign in_0_auto_reg__clk = clk;
  assign in_0_auto_reg__in[15:0] = in_0[15:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem__wdata[15:0] = in_0_auto_reg__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_0_1__in[15:0] = in_0_auto_reg__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_r__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_w__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem__raddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_1_1__in[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem__waddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem__wdata[15:0] = mul_649_649_650__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem__wen = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux__sel = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$veq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__sel = lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$veq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1_valid_term__in = lb_grad_xx_2_stencil_update_stream$mem_1$veq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux__sel = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__sel = lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_r__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_w__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem__raddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_2_1__in[15:0] = lb_grad_xx_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem__waddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem__wen = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux__sel = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$veq__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__sel = lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$veq__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2_valid_term__in = lb_grad_xx_2_stencil_update_stream$mem_2$veq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux__sel = lb_grad_xx_2_stencil_update_stream_wen__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__sel = lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux__in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_1__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_0_1__in[15:0] = mul_649_649_650__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_2__in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_1__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_2__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_1_1__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_1_2__in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_1__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_1_2__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_2_1__clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_2_2__in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_2_1__out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_2_2__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_r__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_w__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem__raddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_1_1__in[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem__waddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem__wdata[15:0] = mul_691_693_694__out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem__wen = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux__sel = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$veq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__sel = lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$veq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1_valid_term__in = lb_grad_xy_2_stencil_update_stream$mem_1$veq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux__sel = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__sel = lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_r__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_w__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem__raddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_2_1__in[15:0] = lb_grad_xy_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem__waddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem__wen = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux__sel = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$veq__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__sel = lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$veq__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2_valid_term__in = lb_grad_xy_2_stencil_update_stream$mem_2$veq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux__sel = lb_grad_xy_2_stencil_update_stream_wen__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__sel = lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux__in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_1__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_0_1__in[15:0] = mul_691_693_694__out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_2__in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_1__out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_2__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_1_1__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_1_2__in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_1__out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_1_2__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_2_1__clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_2_2__in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_2_1__out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_2_2__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_r__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_w__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem__raddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_1_1__in[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem__waddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem__wdata[15:0] = mul_715_715_716__out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem__wen = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux__sel = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$veq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__sel = lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$veq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1_valid_term__in = lb_grad_yy_2_stencil_update_stream$mem_1$veq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux__sel = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__sel = lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_r__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_w__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem__raddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_2_1__in[15:0] = lb_grad_yy_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem__waddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem__wen = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux__sel = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$veq__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__sel = lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$veq__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2_valid_term__in = lb_grad_yy_2_stencil_update_stream$mem_2$veq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux__sel = lb_grad_yy_2_stencil_update_stream_wen__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__sel = lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux__in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_1__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_0_1__in[15:0] = mul_715_715_716__out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_2__in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_1__out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_2__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_1_1__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_1_2__in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_1__out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_1_2__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_2_1__clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_2_2__in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_2_1__out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_2_2__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$add_r__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_r__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_w__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_w__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$mem__raddr[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_1__in[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign smax_758_759_760$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign smax_758_759_760$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem__waddr[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem__wdata[15:0] = sub_746_749_750__out[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem__wen = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__in[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux__sel = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$veq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__sel = lb_p3_cim_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$veq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1_valid_term__in = lb_p3_cim_stencil_update_stream$mem_1$veq__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__in[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux__sel = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__sel = lb_p3_cim_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_r__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_r__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_w__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_w__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$mem__raddr[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_1__in[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign smax_754_755_756$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign smax_754_755_756$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem__waddr[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem__wen = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__in[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux__sel = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$veq__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__sel = lb_p3_cim_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$veq__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2_valid_term__in = lb_p3_cim_stencil_update_stream$mem_2$veq__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__in[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux__sel = lb_p3_cim_stencil_update_stream_wen__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__sel = lb_p3_cim_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux__in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_1__clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_0_1__in[15:0] = sub_746_749_750__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_2__in[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1__out[15:0];
  assign smax_762_763_764$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1__out[15:0];
  assign smax_762_763_764$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_2__clk = clk;
  assign smax_760_761_762$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$reg_0_2__out[15:0];
  assign smax_760_761_762$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_0_2__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_1__clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_1_2__in[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1__out[15:0];
  assign ule100_751_768__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1__out[15:0];
  assign ult_766_751_767__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_2__clk = clk;
  assign smax_756_757_758$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$reg_1_2__out[15:0];
  assign smax_756_757_758$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_2__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_1__clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_2_2__in[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1__out[15:0];
  assign smax_752_753_754$max_mux__in0[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1__out[15:0];
  assign smax_752_753_754$scomp__in1[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1__out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_2__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$add_r__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_r__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_r__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_w__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_w__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$c1__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_w__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_eq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_eq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$max_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$mem__raddr[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem__wdata[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_1__in[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign mul_639_635_640__in0[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem__rdata[15:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem__waddr[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem__wen = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr_mux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__in[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux__sel = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$veq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux__sel = lb_padded_2_stencil_update_stream$mem_1$raddr_eq__out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$veq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1_valid_term__in = lb_padded_2_stencil_update_stream$mem_1$veq__out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr_mux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__in[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux__sel = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$reg0__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux__sel = lb_padded_2_stencil_update_stream$mem_1$waddr_eq__out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$zero_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_r__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_r__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_r__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_w__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_w__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$c1__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_w__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_eq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_eq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$max_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$mem__raddr[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$reg_2_1__in[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign sub_629_631_632__in0[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign sub_686_688_689__in1[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem__rdata[15:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem__waddr[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem__wen = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr_mux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__in[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux__sel = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$veq__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux__sel = lb_padded_2_stencil_update_stream$mem_2$raddr_eq__out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$veq__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2_valid_term__in = lb_padded_2_stencil_update_stream$mem_2$veq__out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr_mux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__in[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux__sel = lb_padded_2_stencil_update_stream_wen__out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$reg0__clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux__sel = lb_padded_2_stencil_update_stream$mem_2$waddr_eq__out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux__in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$zero_const__out[8:0];
  assign lb_padded_2_stencil_update_stream$reg_0_1__clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_0_2__in[15:0] = lb_padded_2_stencil_update_stream$reg_0_1__out[15:0];
  assign mul_676_677_678__in0[15:0] = lb_padded_2_stencil_update_stream$reg_0_1__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_0_2__clk = clk;
  assign sub_641_643_644__in1[15:0] = lb_padded_2_stencil_update_stream$reg_0_2__out[15:0];
  assign sub_671_673_674__in0[15:0] = lb_padded_2_stencil_update_stream$reg_0_2__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_1__clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_1_2__in[15:0] = lb_padded_2_stencil_update_stream$reg_1_1__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_2__clk = clk;
  assign mul_634_635_636__in0[15:0] = lb_padded_2_stencil_update_stream$reg_1_2__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_2_1__clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_2_2__in[15:0] = lb_padded_2_stencil_update_stream$reg_2_1__out[15:0];
  assign mul_681_677_682__in0[15:0] = lb_padded_2_stencil_update_stream$reg_2_1__out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_2_2__clk = clk;
  assign sub_629_631_632__in1[15:0] = lb_padded_2_stencil_update_stream$reg_2_2__out[15:0];
  assign sub_671_673_674__in1[15:0] = lb_padded_2_stencil_update_stream$reg_2_2__out[15:0];
  assign sub_632_636_637__in1[15:0] = mul_634_635_636__out[15:0];
  assign sub_679_682_683__in1[15:0] = mul_681_677_682__out[15:0];
  assign mul_691_693_694__in1[15:0] = sub_686_688_689__out[15:0];
  assign mul_715_715_716__in0[15:0] = sub_686_688_689__out[15:0];
  assign mul_715_715_716__in1[15:0] = sub_686_688_689__out[15:0];
  assign sub_743_745_746__in0[15:0] = mul_740_741_743__out[15:0];
  assign sub_743_745_746__in1[15:0] = mul_744_744_745__out[15:0];
  assign out[15:0] = mux_769_770_771__out[15:0];
  assign smax_752_753_754$max_mux__in1[15:0] = sub_746_749_750__out[15:0];
  assign smax_754_755_756$max_mux__in1[15:0] = smax_752_753_754$max_mux__out[15:0];
  assign smax_754_755_756$scomp__in0[15:0] = smax_752_753_754$max_mux__out[15:0];
  assign smax_752_753_754$max_mux__sel = smax_752_753_754$scomp__out;
  assign smax_752_753_754$scomp__in0[15:0] = sub_746_749_750__out[15:0];
  assign smax_756_757_758$max_mux__in1[15:0] = smax_754_755_756$max_mux__out[15:0];
  assign smax_756_757_758$scomp__in0[15:0] = smax_754_755_756$max_mux__out[15:0];
  assign smax_754_755_756$max_mux__sel = smax_754_755_756$scomp__out;
  assign smax_758_759_760$max_mux__in1[15:0] = smax_756_757_758$max_mux__out[15:0];
  assign smax_758_759_760$scomp__in0[15:0] = smax_756_757_758$max_mux__out[15:0];
  assign smax_756_757_758$max_mux__sel = smax_756_757_758$scomp__out;
  assign smax_760_761_762$max_mux__in1[15:0] = smax_758_759_760$max_mux__out[15:0];
  assign smax_760_761_762$scomp__in0[15:0] = smax_758_759_760$max_mux__out[15:0];
  assign smax_758_759_760$max_mux__sel = smax_758_759_760$scomp__out;
  assign smax_762_763_764$max_mux__in1[15:0] = smax_760_761_762$max_mux__out[15:0];
  assign smax_762_763_764$scomp__in0[15:0] = smax_760_761_762$max_mux__out[15:0];
  assign smax_760_761_762$max_mux__sel = smax_760_761_762$scomp__out;
  assign smax_764_765_766$max_mux__in1[15:0] = smax_762_763_764$max_mux__out[15:0];
  assign smax_764_765_766$scomp__in0[15:0] = smax_762_763_764$max_mux__out[15:0];
  assign smax_762_763_764$max_mux__sel = smax_762_763_764$scomp__out;
  assign smax_764_765_766$max_mux__in0[15:0] = sub_746_749_750__out[15:0];
  assign ult_766_751_767__in0[15:0] = smax_764_765_766$max_mux__out[15:0];
  assign smax_764_765_766$max_mux__sel = smax_764_765_766$scomp__out;
  assign smax_764_765_766$scomp__in1[15:0] = sub_746_749_750__out[15:0];
  assign sub_632_636_637__in0[15:0] = sub_629_631_632__out[15:0];
  assign sub_746_749_750__in0[15:0] = sub_743_745_746__out[15:0];

endmodule //DesignTop
