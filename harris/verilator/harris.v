

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
                     /* verilator lint_off UNUSED */
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

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule //coreir_eq

module coreir_ashr #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = $signed(in0) >>> in1;

endmodule //coreir_ashr

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

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

module coreir_sge #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = $signed(in0) >= $signed(in1);

endmodule //coreir_sge

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

module coreir_ule #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 <= in1;

endmodule //coreir_ule

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
  wire [15:0] add_637_640_641_in0;
  wire [15:0] add_637_640_641_out;
  wire [15:0] add_637_640_641_in1;
  coreir_add #(.width(16)) add_637_640_641(
    .in0(add_637_640_641_in0),
    .in1(add_637_640_641_in1),
    .out(add_637_640_641_out)
  );

  //Wire declarations for instance 'add_644_646_647' (Module coreir_add)
  wire [15:0] add_644_646_647_in0;
  wire [15:0] add_644_646_647_out;
  wire [15:0] add_644_646_647_in1;
  coreir_add #(.width(16)) add_644_646_647(
    .in0(add_644_646_647_in0),
    .in1(add_644_646_647_in1),
    .out(add_644_646_647_out)
  );

  //Wire declarations for instance 'add_651_652_653' (Module coreir_add)
  wire [15:0] add_651_652_653_in0;
  wire [15:0] add_651_652_653_out;
  wire [15:0] add_651_652_653_in1;
  coreir_add #(.width(16)) add_651_652_653(
    .in0(add_651_652_653_in0),
    .in1(add_651_652_653_in1),
    .out(add_651_652_653_out)
  );

  //Wire declarations for instance 'add_651_654_655' (Module coreir_add)
  wire [15:0] add_651_654_655_in0;
  wire [15:0] add_651_654_655_out;
  wire [15:0] add_651_654_655_in1;
  coreir_add #(.width(16)) add_651_654_655(
    .in0(add_651_654_655_in0),
    .in1(add_651_654_655_in1),
    .out(add_651_654_655_out)
  );

  //Wire declarations for instance 'add_651_656_657' (Module coreir_add)
  wire [15:0] add_651_656_657_in0;
  wire [15:0] add_651_656_657_out;
  wire [15:0] add_651_656_657_in1;
  coreir_add #(.width(16)) add_651_656_657(
    .in0(add_651_656_657_in0),
    .in1(add_651_656_657_in1),
    .out(add_651_656_657_out)
  );

  //Wire declarations for instance 'add_651_658_659' (Module coreir_add)
  wire [15:0] add_651_658_659_in0;
  wire [15:0] add_651_658_659_out;
  wire [15:0] add_651_658_659_in1;
  coreir_add #(.width(16)) add_651_658_659(
    .in0(add_651_658_659_in0),
    .in1(add_651_658_659_in1),
    .out(add_651_658_659_out)
  );

  //Wire declarations for instance 'add_651_660_661' (Module coreir_add)
  wire [15:0] add_651_660_661_in0;
  wire [15:0] add_651_660_661_out;
  wire [15:0] add_651_660_661_in1;
  coreir_add #(.width(16)) add_651_660_661(
    .in0(add_651_660_661_in0),
    .in1(add_651_660_661_in1),
    .out(add_651_660_661_out)
  );

  //Wire declarations for instance 'add_651_662_663' (Module coreir_add)
  wire [15:0] add_651_662_663_in0;
  wire [15:0] add_651_662_663_out;
  wire [15:0] add_651_662_663_in1;
  coreir_add #(.width(16)) add_651_662_663(
    .in0(add_651_662_663_in0),
    .in1(add_651_662_663_in1),
    .out(add_651_662_663_out)
  );

  //Wire declarations for instance 'add_651_664_665' (Module coreir_add)
  wire [15:0] add_651_664_665_in0;
  wire [15:0] add_651_664_665_out;
  wire [15:0] add_651_664_665_in1;
  coreir_add #(.width(16)) add_651_664_665(
    .in0(add_651_664_665_in0),
    .in1(add_651_664_665_in1),
    .out(add_651_664_665_out)
  );

  //Wire declarations for instance 'add_651_666_667' (Module coreir_add)
  wire [15:0] add_651_666_667_in0;
  wire [15:0] add_651_666_667_out;
  wire [15:0] add_651_666_667_in1;
  coreir_add #(.width(16)) add_651_666_667(
    .in0(add_651_666_667_in0),
    .in1(add_651_666_667_in1),
    .out(add_651_666_667_out)
  );

  //Wire declarations for instance 'add_651_668_669' (Module coreir_add)
  wire [15:0] add_651_668_669_in0;
  wire [15:0] add_651_668_669_out;
  wire [15:0] add_651_668_669_in1;
  coreir_add #(.width(16)) add_651_668_669(
    .in0(add_651_668_669_in0),
    .in1(add_651_668_669_in1),
    .out(add_651_668_669_out)
  );

  //Wire declarations for instance 'add_674_678_679' (Module coreir_add)
  wire [15:0] add_674_678_679_in0;
  wire [15:0] add_674_678_679_out;
  wire [15:0] add_674_678_679_in1;
  coreir_add #(.width(16)) add_674_678_679(
    .in0(add_674_678_679_in0),
    .in1(add_674_678_679_in1),
    .out(add_674_678_679_out)
  );

  //Wire declarations for instance 'add_683_685_686' (Module coreir_add)
  wire [15:0] add_683_685_686_in0;
  wire [15:0] add_683_685_686_out;
  wire [15:0] add_683_685_686_in1;
  coreir_add #(.width(16)) add_683_685_686(
    .in0(add_683_685_686_in0),
    .in1(add_683_685_686_in1),
    .out(add_683_685_686_out)
  );

  //Wire declarations for instance 'add_695_696_697' (Module coreir_add)
  wire [15:0] add_695_696_697_in0;
  wire [15:0] add_695_696_697_out;
  wire [15:0] add_695_696_697_in1;
  coreir_add #(.width(16)) add_695_696_697(
    .in0(add_695_696_697_in0),
    .in1(add_695_696_697_in1),
    .out(add_695_696_697_out)
  );

  //Wire declarations for instance 'add_695_698_699' (Module coreir_add)
  wire [15:0] add_695_698_699_in0;
  wire [15:0] add_695_698_699_out;
  wire [15:0] add_695_698_699_in1;
  coreir_add #(.width(16)) add_695_698_699(
    .in0(add_695_698_699_in0),
    .in1(add_695_698_699_in1),
    .out(add_695_698_699_out)
  );

  //Wire declarations for instance 'add_695_700_701' (Module coreir_add)
  wire [15:0] add_695_700_701_in0;
  wire [15:0] add_695_700_701_out;
  wire [15:0] add_695_700_701_in1;
  coreir_add #(.width(16)) add_695_700_701(
    .in0(add_695_700_701_in0),
    .in1(add_695_700_701_in1),
    .out(add_695_700_701_out)
  );

  //Wire declarations for instance 'add_695_702_703' (Module coreir_add)
  wire [15:0] add_695_702_703_in0;
  wire [15:0] add_695_702_703_out;
  wire [15:0] add_695_702_703_in1;
  coreir_add #(.width(16)) add_695_702_703(
    .in0(add_695_702_703_in0),
    .in1(add_695_702_703_in1),
    .out(add_695_702_703_out)
  );

  //Wire declarations for instance 'add_695_704_705' (Module coreir_add)
  wire [15:0] add_695_704_705_in0;
  wire [15:0] add_695_704_705_out;
  wire [15:0] add_695_704_705_in1;
  coreir_add #(.width(16)) add_695_704_705(
    .in0(add_695_704_705_in0),
    .in1(add_695_704_705_in1),
    .out(add_695_704_705_out)
  );

  //Wire declarations for instance 'add_695_706_707' (Module coreir_add)
  wire [15:0] add_695_706_707_in0;
  wire [15:0] add_695_706_707_out;
  wire [15:0] add_695_706_707_in1;
  coreir_add #(.width(16)) add_695_706_707(
    .in0(add_695_706_707_in0),
    .in1(add_695_706_707_in1),
    .out(add_695_706_707_out)
  );

  //Wire declarations for instance 'add_695_708_709' (Module coreir_add)
  wire [15:0] add_695_708_709_in0;
  wire [15:0] add_695_708_709_out;
  wire [15:0] add_695_708_709_in1;
  coreir_add #(.width(16)) add_695_708_709(
    .in0(add_695_708_709_in0),
    .in1(add_695_708_709_in1),
    .out(add_695_708_709_out)
  );

  //Wire declarations for instance 'add_695_710_711' (Module coreir_add)
  wire [15:0] add_695_710_711_in0;
  wire [15:0] add_695_710_711_out;
  wire [15:0] add_695_710_711_in1;
  coreir_add #(.width(16)) add_695_710_711(
    .in0(add_695_710_711_in0),
    .in1(add_695_710_711_in1),
    .out(add_695_710_711_out)
  );

  //Wire declarations for instance 'add_695_712_713' (Module coreir_add)
  wire [15:0] add_695_712_713_in0;
  wire [15:0] add_695_712_713_out;
  wire [15:0] add_695_712_713_in1;
  coreir_add #(.width(16)) add_695_712_713(
    .in0(add_695_712_713_in0),
    .in1(add_695_712_713_in1),
    .out(add_695_712_713_out)
  );

  //Wire declarations for instance 'add_717_718_719' (Module coreir_add)
  wire [15:0] add_717_718_719_in0;
  wire [15:0] add_717_718_719_out;
  wire [15:0] add_717_718_719_in1;
  coreir_add #(.width(16)) add_717_718_719(
    .in0(add_717_718_719_in0),
    .in1(add_717_718_719_in1),
    .out(add_717_718_719_out)
  );

  //Wire declarations for instance 'add_717_720_721' (Module coreir_add)
  wire [15:0] add_717_720_721_in0;
  wire [15:0] add_717_720_721_out;
  wire [15:0] add_717_720_721_in1;
  coreir_add #(.width(16)) add_717_720_721(
    .in0(add_717_720_721_in0),
    .in1(add_717_720_721_in1),
    .out(add_717_720_721_out)
  );

  //Wire declarations for instance 'add_717_722_723' (Module coreir_add)
  wire [15:0] add_717_722_723_in0;
  wire [15:0] add_717_722_723_out;
  wire [15:0] add_717_722_723_in1;
  coreir_add #(.width(16)) add_717_722_723(
    .in0(add_717_722_723_in0),
    .in1(add_717_722_723_in1),
    .out(add_717_722_723_out)
  );

  //Wire declarations for instance 'add_717_724_725' (Module coreir_add)
  wire [15:0] add_717_724_725_in0;
  wire [15:0] add_717_724_725_out;
  wire [15:0] add_717_724_725_in1;
  coreir_add #(.width(16)) add_717_724_725(
    .in0(add_717_724_725_in0),
    .in1(add_717_724_725_in1),
    .out(add_717_724_725_out)
  );

  //Wire declarations for instance 'add_717_726_727' (Module coreir_add)
  wire [15:0] add_717_726_727_in0;
  wire [15:0] add_717_726_727_out;
  wire [15:0] add_717_726_727_in1;
  coreir_add #(.width(16)) add_717_726_727(
    .in0(add_717_726_727_in0),
    .in1(add_717_726_727_in1),
    .out(add_717_726_727_out)
  );

  //Wire declarations for instance 'add_717_728_729' (Module coreir_add)
  wire [15:0] add_717_728_729_in0;
  wire [15:0] add_717_728_729_out;
  wire [15:0] add_717_728_729_in1;
  coreir_add #(.width(16)) add_717_728_729(
    .in0(add_717_728_729_in0),
    .in1(add_717_728_729_in1),
    .out(add_717_728_729_out)
  );

  //Wire declarations for instance 'add_717_730_731' (Module coreir_add)
  wire [15:0] add_717_730_731_in0;
  wire [15:0] add_717_730_731_out;
  wire [15:0] add_717_730_731_in1;
  coreir_add #(.width(16)) add_717_730_731(
    .in0(add_717_730_731_in0),
    .in1(add_717_730_731_in1),
    .out(add_717_730_731_out)
  );

  //Wire declarations for instance 'add_717_732_733' (Module coreir_add)
  wire [15:0] add_717_732_733_in0;
  wire [15:0] add_717_732_733_out;
  wire [15:0] add_717_732_733_in1;
  coreir_add #(.width(16)) add_717_732_733(
    .in0(add_717_732_733_in0),
    .in1(add_717_732_733_in1),
    .out(add_717_732_733_out)
  );

  //Wire declarations for instance 'add_717_734_735' (Module coreir_add)
  wire [15:0] add_717_734_735_in0;
  wire [15:0] add_717_734_735_out;
  wire [15:0] add_717_734_735_in1;
  coreir_add #(.width(16)) add_717_734_735(
    .in0(add_717_734_735_in0),
    .in1(add_717_734_735_in1),
    .out(add_717_734_735_out)
  );

  //Wire declarations for instance 'add_740_741_742' (Module coreir_add)
  wire [15:0] add_740_741_742_in0;
  wire [15:0] add_740_741_742_out;
  wire [15:0] add_740_741_742_in1;
  coreir_add #(.width(16)) add_740_741_742(
    .in0(add_740_741_742_in0),
    .in1(add_740_741_742_in1),
    .out(add_740_741_742_out)
  );

  //Wire declarations for instance 'ashr_736_739_740' (Module coreir_ashr)
  wire [15:0] ashr_736_739_740_in0;
  wire [15:0] ashr_736_739_740_out;
  wire [15:0] ashr_736_739_740_in1;
  coreir_ashr #(.width(16)) ashr_736_739_740(
    .in0(ashr_736_739_740_in0),
    .in1(ashr_736_739_740_in1),
    .out(ashr_736_739_740_out)
  );

  //Wire declarations for instance 'ashr_737_739_741' (Module coreir_ashr)
  wire [15:0] ashr_737_739_741_in0;
  wire [15:0] ashr_737_739_741_out;
  wire [15:0] ashr_737_739_741_in1;
  coreir_ashr #(.width(16)) ashr_737_739_741(
    .in0(ashr_737_739_741_in0),
    .in1(ashr_737_739_741_in1),
    .out(ashr_737_739_741_out)
  );

  //Wire declarations for instance 'ashr_738_739_744' (Module coreir_ashr)
  wire [15:0] ashr_738_739_744_in0;
  wire [15:0] ashr_738_739_744_out;
  wire [15:0] ashr_738_739_744_in1;
  coreir_ashr #(.width(16)) ashr_738_739_744(
    .in0(ashr_738_739_744_in0),
    .in1(ashr_738_739_744_in1),
    .out(ashr_738_739_744_out)
  );

  //Wire declarations for instance 'ashr_747_748_749' (Module coreir_ashr)
  wire [15:0] ashr_747_748_749_in0;
  wire [15:0] ashr_747_748_749_out;
  wire [15:0] ashr_747_748_749_in1;
  coreir_ashr #(.width(16)) ashr_747_748_749(
    .in0(ashr_747_748_749_in0),
    .in1(ashr_747_748_749_in1),
    .out(ashr_747_748_749_out)
  );

  //Wire declarations for instance 'bitand_767_768_769' (Module corebit_and)
  wire  bitand_767_768_769_in0;
  wire  bitand_767_768_769_out;
  wire  bitand_767_768_769_in1;
  corebit_and bitand_767_768_769(
    .in0(bitand_767_768_769_in0),
    .in1(bitand_767_768_769_in1),
    .out(bitand_767_768_769_out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0_out;
  coreir_const #(.value(16'd0),.width(16)) const0_0(
    .out(const0_0_out)
  );

  //Wire declarations for instance 'const0_0$1' (Module coreir_const)
  wire [15:0] const0_0$1_out;
  coreir_const #(.value(16'd0),.width(16)) const0_0$1(
    .out(const0_0$1_out)
  );

  //Wire declarations for instance 'const0_0$2' (Module coreir_const)
  wire [15:0] const0_0$2_out;
  coreir_const #(.value(16'd0),.width(16)) const0_0$2(
    .out(const0_0$2_out)
  );

  //Wire declarations for instance 'const0__771$1' (Module coreir_const)
  wire [15:0] const0__771$1_out;
  coreir_const #(.value(16'd0),.width(16)) const0__771$1(
    .out(const0__771$1_out)
  );

  //Wire declarations for instance 'const100_100' (Module coreir_const)
  wire [15:0] const100_100_out;
  coreir_const #(.value(16'd100),.width(16)) const100_100(
    .out(const100_100_out)
  );

  //Wire declarations for instance 'const255__770' (Module coreir_const)
  wire [15:0] const255__770_out;
  coreir_const #(.value(16'd255),.width(16)) const255__770(
    .out(const255__770_out)
  );

  //Wire declarations for instance 'const2__635' (Module coreir_const)
  wire [15:0] const2__635_out;
  coreir_const #(.value(16'd2),.width(16)) const2__635(
    .out(const2__635_out)
  );

  //Wire declarations for instance 'const2__635$1' (Module coreir_const)
  wire [15:0] const2__635$1_out;
  coreir_const #(.value(16'd2),.width(16)) const2__635$1(
    .out(const2__635$1_out)
  );

  //Wire declarations for instance 'const2__677' (Module coreir_const)
  wire [15:0] const2__677_out;
  coreir_const #(.value(16'd2),.width(16)) const2__677(
    .out(const2__677_out)
  );

  //Wire declarations for instance 'const2__677$1' (Module coreir_const)
  wire [15:0] const2__677$1_out;
  coreir_const #(.value(16'd2),.width(16)) const2__677$1(
    .out(const2__677$1_out)
  );

  //Wire declarations for instance 'const4__748' (Module coreir_const)
  wire [15:0] const4__748_out;
  coreir_const #(.value(16'd4),.width(16)) const4__748(
    .out(const4__748_out)
  );

  //Wire declarations for instance 'const7__739' (Module coreir_const)
  wire [15:0] const7__739_out;
  coreir_const #(.value(16'd7),.width(16)) const7__739(
    .out(const7__739_out)
  );

  //Wire declarations for instance 'const7__739$1' (Module coreir_const)
  wire [15:0] const7__739$1_out;
  coreir_const #(.value(16'd7),.width(16)) const7__739$1(
    .out(const7__739$1_out)
  );

  //Wire declarations for instance 'const7__739$2' (Module coreir_const)
  wire [15:0] const7__739$2_out;
  coreir_const #(.value(16'd7),.width(16)) const7__739$2(
    .out(const7__739$2_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem_wdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem_rdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_xx_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_grad_xx_2_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_grad_xx_2_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_grad_xx_2_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_grad_xx_2_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_grad_xx_2_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$veq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$veq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$veq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_xx_2_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_grad_xx_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_xx_2_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem_wdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem_rdata;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_xx_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_grad_xx_2_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_grad_xx_2_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_grad_xx_2_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_grad_xx_2_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_grad_xx_2_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$veq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$veq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$veq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_out;
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xx_2_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xx_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_xx_2_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_xx_2_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_grad_xx_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_xx_2_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_0_1_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_1_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_0_1_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_0_1_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_0_1_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_0_2_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_2_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_0_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_0_2_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_0_2_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_0_2_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_1_1_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_1_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_1_1_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_1_1_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_1_1_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_1_2_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_2_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_1_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_1_2_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_1_2_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_1_2_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_2_1_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_1_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_2_1_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_2_1_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_2_1_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_xx_2_stencil_update_stream$reg_2_2_clk;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_2_in;
  wire [15:0] lb_grad_xx_2_stencil_update_stream$reg_2_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xx_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_xx_2_stencil_update_stream$reg_2_2_clk),
    .in(lb_grad_xx_2_stencil_update_stream$reg_2_2_in),
    .out(lb_grad_xx_2_stencil_update_stream$reg_2_2_out)
  );

  //Wire declarations for instance 'lb_grad_xx_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_xx_2_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_grad_xx_2_stencil_update_stream_wen(
    .out(lb_grad_xx_2_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem_wdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem_rdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_xy_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_grad_xy_2_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_grad_xy_2_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_grad_xy_2_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_grad_xy_2_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_grad_xy_2_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$veq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$veq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$veq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_xy_2_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_grad_xy_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_xy_2_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem_wdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem_rdata;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_xy_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_grad_xy_2_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_grad_xy_2_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_grad_xy_2_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_grad_xy_2_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_grad_xy_2_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$veq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$veq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$veq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_out;
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_xy_2_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_xy_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_xy_2_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_xy_2_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_grad_xy_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_xy_2_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_0_1_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_1_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_0_1_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_0_1_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_0_1_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_0_2_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_2_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_0_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_0_2_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_0_2_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_0_2_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_1_1_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_1_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_1_1_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_1_1_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_1_1_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_1_2_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_2_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_1_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_1_2_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_1_2_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_1_2_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_2_1_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_1_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_2_1_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_2_1_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_2_1_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_xy_2_stencil_update_stream$reg_2_2_clk;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_2_in;
  wire [15:0] lb_grad_xy_2_stencil_update_stream$reg_2_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_xy_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_xy_2_stencil_update_stream$reg_2_2_clk),
    .in(lb_grad_xy_2_stencil_update_stream$reg_2_2_in),
    .out(lb_grad_xy_2_stencil_update_stream$reg_2_2_out)
  );

  //Wire declarations for instance 'lb_grad_xy_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_xy_2_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_grad_xy_2_stencil_update_stream_wen(
    .out(lb_grad_xy_2_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$c1(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$max_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem_wdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem_rdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_yy_2_stencil_update_stream$mem_1$mem(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_grad_yy_2_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_grad_yy_2_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_grad_yy_2_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_grad_yy_2_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_grad_yy_2_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$veq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$veq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$veq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$veq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_grad_yy_2_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_grad_yy_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_grad_yy_2_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$c1(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(9'd484),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$max_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem_wdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem_rdata;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(484),.width(16)) lb_grad_yy_2_stencil_update_stream$mem_2$mem(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_grad_yy_2_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_grad_yy_2_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_grad_yy_2_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_grad_yy_2_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_grad_yy_2_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$veq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$veq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$veq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$veq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_out;
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_grad_yy_2_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_grad_yy_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_grad_yy_2_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_grad_yy_2_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_grad_yy_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_grad_yy_2_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_0_1_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_1_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_0_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_0_1_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_0_1_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_0_1_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_0_2_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_2_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_0_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_0_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_0_2_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_0_2_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_0_2_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_1_1_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_1_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_1_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_1_1_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_1_1_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_1_1_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_1_2_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_2_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_1_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_1_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_1_2_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_1_2_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_1_2_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_2_1_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_1_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_2_1(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_2_1_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_2_1_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_2_1_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_grad_yy_2_stencil_update_stream$reg_2_2_clk;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_2_in;
  wire [15:0] lb_grad_yy_2_stencil_update_stream$reg_2_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_grad_yy_2_stencil_update_stream$reg_2_2(
    .clk(lb_grad_yy_2_stencil_update_stream$reg_2_2_clk),
    .in(lb_grad_yy_2_stencil_update_stream$reg_2_2_in),
    .out(lb_grad_yy_2_stencil_update_stream$reg_2_2_out)
  );

  //Wire declarations for instance 'lb_grad_yy_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_grad_yy_2_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_grad_yy_2_stencil_update_stream_wen(
    .out(lb_grad_yy_2_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$add_r(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$add_w(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$c1(
    .out(lb_p3_cim_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(9'd482),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$max_const(
    .out(lb_p3_cim_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_p3_cim_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_1$mem_wdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_p3_cim_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_1$mem_rdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(482),.width(16)) lb_p3_cim_stencil_update_stream$mem_1$mem(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_p3_cim_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_p3_cim_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_p3_cim_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_p3_cim_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_p3_cim_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$veq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_1$veq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$veq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$veq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_1$zero_const(
    .out(lb_p3_cim_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_p3_cim_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_p3_cim_stencil_update_stream$mem_1_valid_term(
    .in(lb_p3_cim_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$add_r(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$add_w(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$c1(
    .out(lb_p3_cim_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(9'd482),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$max_const(
    .out(lb_p3_cim_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_p3_cim_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_2$mem_wdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_p3_cim_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_p3_cim_stencil_update_stream$mem_2$mem_rdata;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(482),.width(16)) lb_p3_cim_stencil_update_stream$mem_2$mem(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_p3_cim_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_p3_cim_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_p3_cim_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_p3_cim_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_p3_cim_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$veq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_2$veq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$veq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$veq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_out;
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_p3_cim_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_p3_cim_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_p3_cim_stencil_update_stream$mem_2$zero_const(
    .out(lb_p3_cim_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_p3_cim_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_p3_cim_stencil_update_stream$mem_2_valid_term(
    .in(lb_p3_cim_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_0_1_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_1_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_0_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_0_1_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_0_1_in),
    .out(lb_p3_cim_stencil_update_stream$reg_0_1_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_0_2_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_2_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_0_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_0_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_0_2_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_0_2_in),
    .out(lb_p3_cim_stencil_update_stream$reg_0_2_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_1_1_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_1_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_1_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_1_1_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_1_1_in),
    .out(lb_p3_cim_stencil_update_stream$reg_1_1_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_1_2_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_2_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_1_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_1_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_1_2_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_1_2_in),
    .out(lb_p3_cim_stencil_update_stream$reg_1_2_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_2_1_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_1_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_2_1(
    .clk(lb_p3_cim_stencil_update_stream$reg_2_1_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_2_1_in),
    .out(lb_p3_cim_stencil_update_stream$reg_2_1_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_p3_cim_stencil_update_stream$reg_2_2_clk;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_2_in;
  wire [15:0] lb_p3_cim_stencil_update_stream$reg_2_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_p3_cim_stencil_update_stream$reg_2_2(
    .clk(lb_p3_cim_stencil_update_stream$reg_2_2_clk),
    .in(lb_p3_cim_stencil_update_stream$reg_2_2_in),
    .out(lb_p3_cim_stencil_update_stream$reg_2_2_out)
  );

  //Wire declarations for instance 'lb_p3_cim_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p3_cim_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_p3_cim_stencil_update_stream_wen(
    .out(lb_p3_cim_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$add_r(
    .in0(lb_padded_2_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$add_w(
    .in0(lb_padded_2_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_padded_2_stencil_update_stream$mem_1$c1(
    .out(lb_padded_2_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(9'd486),.width(9)) lb_padded_2_stencil_update_stream$mem_1$max_const(
    .out(lb_padded_2_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_padded_2_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_1$mem_wdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_padded_2_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_1$mem_rdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(486),.width(16)) lb_padded_2_stencil_update_stream$mem_1$mem(
    .clk(lb_padded_2_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_padded_2_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_padded_2_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_padded_2_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_padded_2_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_padded_2_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr_eq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$veq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_1$veq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$veq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$veq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr_eq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_1$zero_const(
    .out(lb_padded_2_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_padded_2_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_padded_2_stencil_update_stream$mem_1_valid_term(
    .in(lb_padded_2_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$add_r(
    .in0(lb_padded_2_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$add_w(
    .in0(lb_padded_2_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(9'd1),.width(9)) lb_padded_2_stencil_update_stream$mem_2$c1(
    .out(lb_padded_2_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(9'd486),.width(9)) lb_padded_2_stencil_update_stream$mem_2$max_const(
    .out(lb_padded_2_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_padded_2_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_2$mem_wdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_padded_2_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_padded_2_stencil_update_stream$mem_2$mem_rdata;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(486),.width(16)) lb_padded_2_stencil_update_stream$mem_2$mem(
    .clk(lb_padded_2_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_padded_2_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_padded_2_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_padded_2_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_padded_2_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_padded_2_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr_eq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$veq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_2$veq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$veq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$veq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr_eq_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux_out;
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_padded_2_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(9)) lb_padded_2_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_padded_2_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_padded_2_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [8:0] lb_padded_2_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(9'd0),.width(9)) lb_padded_2_stencil_update_stream$mem_2$zero_const(
    .out(lb_padded_2_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_padded_2_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_padded_2_stencil_update_stream$mem_2_valid_term(
    .in(lb_padded_2_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_0_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_0_1_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_1_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_0_1(
    .clk(lb_padded_2_stencil_update_stream$reg_0_1_clk),
    .in(lb_padded_2_stencil_update_stream$reg_0_1_in),
    .out(lb_padded_2_stencil_update_stream$reg_0_1_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_0_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_0_2_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_2_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_0_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_0_2(
    .clk(lb_padded_2_stencil_update_stream$reg_0_2_clk),
    .in(lb_padded_2_stencil_update_stream$reg_0_2_in),
    .out(lb_padded_2_stencil_update_stream$reg_0_2_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_1_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_1_1_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_1_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_1_1(
    .clk(lb_padded_2_stencil_update_stream$reg_1_1_clk),
    .in(lb_padded_2_stencil_update_stream$reg_1_1_in),
    .out(lb_padded_2_stencil_update_stream$reg_1_1_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_1_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_1_2_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_2_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_1_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_1_2(
    .clk(lb_padded_2_stencil_update_stream$reg_1_2_clk),
    .in(lb_padded_2_stencil_update_stream$reg_1_2_in),
    .out(lb_padded_2_stencil_update_stream$reg_1_2_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_2_1' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_2_1_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_1_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_1_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_2_1(
    .clk(lb_padded_2_stencil_update_stream$reg_2_1_clk),
    .in(lb_padded_2_stencil_update_stream$reg_2_1_in),
    .out(lb_padded_2_stencil_update_stream$reg_2_1_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream$reg_2_2' (Module coreir_reg)
  wire  lb_padded_2_stencil_update_stream$reg_2_2_clk;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_2_in;
  wire [15:0] lb_padded_2_stencil_update_stream$reg_2_2_out;
  coreir_reg #(.init(16'd0),.width(16)) lb_padded_2_stencil_update_stream$reg_2_2(
    .clk(lb_padded_2_stencil_update_stream$reg_2_2_clk),
    .in(lb_padded_2_stencil_update_stream$reg_2_2_in),
    .out(lb_padded_2_stencil_update_stream$reg_2_2_out)
  );

  //Wire declarations for instance 'lb_padded_2_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_padded_2_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_padded_2_stencil_update_stream_wen(
    .out(lb_padded_2_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'mul_634_635_636' (Module coreir_mul)
  wire [15:0] mul_634_635_636_in0;
  wire [15:0] mul_634_635_636_out;
  wire [15:0] mul_634_635_636_in1;
  coreir_mul #(.width(16)) mul_634_635_636(
    .in0(mul_634_635_636_in0),
    .in1(mul_634_635_636_in1),
    .out(mul_634_635_636_out)
  );

  //Wire declarations for instance 'mul_639_635_640' (Module coreir_mul)
  wire [15:0] mul_639_635_640_in0;
  wire [15:0] mul_639_635_640_out;
  wire [15:0] mul_639_635_640_in1;
  coreir_mul #(.width(16)) mul_639_635_640(
    .in0(mul_639_635_640_in0),
    .in1(mul_639_635_640_in1),
    .out(mul_639_635_640_out)
  );

  //Wire declarations for instance 'mul_649_649_650' (Module coreir_mul)
  wire [15:0] mul_649_649_650_in0;
  wire [15:0] mul_649_649_650_out;
  wire [15:0] mul_649_649_650_in1;
  coreir_mul #(.width(16)) mul_649_649_650(
    .in0(mul_649_649_650_in0),
    .in1(mul_649_649_650_in1),
    .out(mul_649_649_650_out)
  );

  //Wire declarations for instance 'mul_676_677_678' (Module coreir_mul)
  wire [15:0] mul_676_677_678_in0;
  wire [15:0] mul_676_677_678_out;
  wire [15:0] mul_676_677_678_in1;
  coreir_mul #(.width(16)) mul_676_677_678(
    .in0(mul_676_677_678_in0),
    .in1(mul_676_677_678_in1),
    .out(mul_676_677_678_out)
  );

  //Wire declarations for instance 'mul_681_677_682' (Module coreir_mul)
  wire [15:0] mul_681_677_682_in0;
  wire [15:0] mul_681_677_682_out;
  wire [15:0] mul_681_677_682_in1;
  coreir_mul #(.width(16)) mul_681_677_682(
    .in0(mul_681_677_682_in0),
    .in1(mul_681_677_682_in1),
    .out(mul_681_677_682_out)
  );

  //Wire declarations for instance 'mul_691_693_694' (Module coreir_mul)
  wire [15:0] mul_691_693_694_in0;
  wire [15:0] mul_691_693_694_out;
  wire [15:0] mul_691_693_694_in1;
  coreir_mul #(.width(16)) mul_691_693_694(
    .in0(mul_691_693_694_in0),
    .in1(mul_691_693_694_in1),
    .out(mul_691_693_694_out)
  );

  //Wire declarations for instance 'mul_715_715_716' (Module coreir_mul)
  wire [15:0] mul_715_715_716_in0;
  wire [15:0] mul_715_715_716_out;
  wire [15:0] mul_715_715_716_in1;
  coreir_mul #(.width(16)) mul_715_715_716(
    .in0(mul_715_715_716_in0),
    .in1(mul_715_715_716_in1),
    .out(mul_715_715_716_out)
  );

  //Wire declarations for instance 'mul_740_741_743' (Module coreir_mul)
  wire [15:0] mul_740_741_743_in0;
  wire [15:0] mul_740_741_743_out;
  wire [15:0] mul_740_741_743_in1;
  coreir_mul #(.width(16)) mul_740_741_743(
    .in0(mul_740_741_743_in0),
    .in1(mul_740_741_743_in1),
    .out(mul_740_741_743_out)
  );

  //Wire declarations for instance 'mul_742_742_747' (Module coreir_mul)
  wire [15:0] mul_742_742_747_in0;
  wire [15:0] mul_742_742_747_out;
  wire [15:0] mul_742_742_747_in1;
  coreir_mul #(.width(16)) mul_742_742_747(
    .in0(mul_742_742_747_in0),
    .in1(mul_742_742_747_in1),
    .out(mul_742_742_747_out)
  );

  //Wire declarations for instance 'mul_744_744_745' (Module coreir_mul)
  wire [15:0] mul_744_744_745_in0;
  wire [15:0] mul_744_744_745_out;
  wire [15:0] mul_744_744_745_in1;
  coreir_mul #(.width(16)) mul_744_744_745(
    .in0(mul_744_744_745_in0),
    .in1(mul_744_744_745_in1),
    .out(mul_744_744_745_out)
  );

  //Wire declarations for instance 'mux_769_770_771' (Module coreir_mux)
  wire [15:0] mux_769_770_771_in0;
  wire [15:0] mux_769_770_771_out;
  wire [15:0] mux_769_770_771_in1;
  wire  mux_769_770_771_sel;
  coreir_mux #(.width(16)) mux_769_770_771(
    .in0(mux_769_770_771_in0),
    .in1(mux_769_770_771_in1),
    .out(mux_769_770_771_out),
    .sel(mux_769_770_771_sel)
  );

  //Wire declarations for instance 'smax_752_753_754$max_mux' (Module coreir_mux)
  wire [15:0] smax_752_753_754$max_mux_in0;
  wire [15:0] smax_752_753_754$max_mux_out;
  wire [15:0] smax_752_753_754$max_mux_in1;
  wire  smax_752_753_754$max_mux_sel;
  coreir_mux #(.width(16)) smax_752_753_754$max_mux(
    .in0(smax_752_753_754$max_mux_in0),
    .in1(smax_752_753_754$max_mux_in1),
    .out(smax_752_753_754$max_mux_out),
    .sel(smax_752_753_754$max_mux_sel)
  );

  //Wire declarations for instance 'smax_752_753_754$scomp' (Module coreir_sge)
  wire [15:0] smax_752_753_754$scomp_in0;
  wire  smax_752_753_754$scomp_out;
  wire [15:0] smax_752_753_754$scomp_in1;
  coreir_sge #(.width(16)) smax_752_753_754$scomp(
    .in0(smax_752_753_754$scomp_in0),
    .in1(smax_752_753_754$scomp_in1),
    .out(smax_752_753_754$scomp_out)
  );

  //Wire declarations for instance 'smax_754_755_756$max_mux' (Module coreir_mux)
  wire [15:0] smax_754_755_756$max_mux_in0;
  wire [15:0] smax_754_755_756$max_mux_out;
  wire [15:0] smax_754_755_756$max_mux_in1;
  wire  smax_754_755_756$max_mux_sel;
  coreir_mux #(.width(16)) smax_754_755_756$max_mux(
    .in0(smax_754_755_756$max_mux_in0),
    .in1(smax_754_755_756$max_mux_in1),
    .out(smax_754_755_756$max_mux_out),
    .sel(smax_754_755_756$max_mux_sel)
  );

  //Wire declarations for instance 'smax_754_755_756$scomp' (Module coreir_sge)
  wire [15:0] smax_754_755_756$scomp_in0;
  wire  smax_754_755_756$scomp_out;
  wire [15:0] smax_754_755_756$scomp_in1;
  coreir_sge #(.width(16)) smax_754_755_756$scomp(
    .in0(smax_754_755_756$scomp_in0),
    .in1(smax_754_755_756$scomp_in1),
    .out(smax_754_755_756$scomp_out)
  );

  //Wire declarations for instance 'smax_756_757_758$max_mux' (Module coreir_mux)
  wire [15:0] smax_756_757_758$max_mux_in0;
  wire [15:0] smax_756_757_758$max_mux_out;
  wire [15:0] smax_756_757_758$max_mux_in1;
  wire  smax_756_757_758$max_mux_sel;
  coreir_mux #(.width(16)) smax_756_757_758$max_mux(
    .in0(smax_756_757_758$max_mux_in0),
    .in1(smax_756_757_758$max_mux_in1),
    .out(smax_756_757_758$max_mux_out),
    .sel(smax_756_757_758$max_mux_sel)
  );

  //Wire declarations for instance 'smax_756_757_758$scomp' (Module coreir_sge)
  wire [15:0] smax_756_757_758$scomp_in0;
  wire  smax_756_757_758$scomp_out;
  wire [15:0] smax_756_757_758$scomp_in1;
  coreir_sge #(.width(16)) smax_756_757_758$scomp(
    .in0(smax_756_757_758$scomp_in0),
    .in1(smax_756_757_758$scomp_in1),
    .out(smax_756_757_758$scomp_out)
  );

  //Wire declarations for instance 'smax_758_759_760$max_mux' (Module coreir_mux)
  wire [15:0] smax_758_759_760$max_mux_in0;
  wire [15:0] smax_758_759_760$max_mux_out;
  wire [15:0] smax_758_759_760$max_mux_in1;
  wire  smax_758_759_760$max_mux_sel;
  coreir_mux #(.width(16)) smax_758_759_760$max_mux(
    .in0(smax_758_759_760$max_mux_in0),
    .in1(smax_758_759_760$max_mux_in1),
    .out(smax_758_759_760$max_mux_out),
    .sel(smax_758_759_760$max_mux_sel)
  );

  //Wire declarations for instance 'smax_758_759_760$scomp' (Module coreir_sge)
  wire [15:0] smax_758_759_760$scomp_in0;
  wire  smax_758_759_760$scomp_out;
  wire [15:0] smax_758_759_760$scomp_in1;
  coreir_sge #(.width(16)) smax_758_759_760$scomp(
    .in0(smax_758_759_760$scomp_in0),
    .in1(smax_758_759_760$scomp_in1),
    .out(smax_758_759_760$scomp_out)
  );

  //Wire declarations for instance 'smax_760_761_762$max_mux' (Module coreir_mux)
  wire [15:0] smax_760_761_762$max_mux_in0;
  wire [15:0] smax_760_761_762$max_mux_out;
  wire [15:0] smax_760_761_762$max_mux_in1;
  wire  smax_760_761_762$max_mux_sel;
  coreir_mux #(.width(16)) smax_760_761_762$max_mux(
    .in0(smax_760_761_762$max_mux_in0),
    .in1(smax_760_761_762$max_mux_in1),
    .out(smax_760_761_762$max_mux_out),
    .sel(smax_760_761_762$max_mux_sel)
  );

  //Wire declarations for instance 'smax_760_761_762$scomp' (Module coreir_sge)
  wire [15:0] smax_760_761_762$scomp_in0;
  wire  smax_760_761_762$scomp_out;
  wire [15:0] smax_760_761_762$scomp_in1;
  coreir_sge #(.width(16)) smax_760_761_762$scomp(
    .in0(smax_760_761_762$scomp_in0),
    .in1(smax_760_761_762$scomp_in1),
    .out(smax_760_761_762$scomp_out)
  );

  //Wire declarations for instance 'smax_762_763_764$max_mux' (Module coreir_mux)
  wire [15:0] smax_762_763_764$max_mux_in0;
  wire [15:0] smax_762_763_764$max_mux_out;
  wire [15:0] smax_762_763_764$max_mux_in1;
  wire  smax_762_763_764$max_mux_sel;
  coreir_mux #(.width(16)) smax_762_763_764$max_mux(
    .in0(smax_762_763_764$max_mux_in0),
    .in1(smax_762_763_764$max_mux_in1),
    .out(smax_762_763_764$max_mux_out),
    .sel(smax_762_763_764$max_mux_sel)
  );

  //Wire declarations for instance 'smax_762_763_764$scomp' (Module coreir_sge)
  wire [15:0] smax_762_763_764$scomp_in0;
  wire  smax_762_763_764$scomp_out;
  wire [15:0] smax_762_763_764$scomp_in1;
  coreir_sge #(.width(16)) smax_762_763_764$scomp(
    .in0(smax_762_763_764$scomp_in0),
    .in1(smax_762_763_764$scomp_in1),
    .out(smax_762_763_764$scomp_out)
  );

  //Wire declarations for instance 'smax_764_765_766$max_mux' (Module coreir_mux)
  wire [15:0] smax_764_765_766$max_mux_in0;
  wire [15:0] smax_764_765_766$max_mux_out;
  wire [15:0] smax_764_765_766$max_mux_in1;
  wire  smax_764_765_766$max_mux_sel;
  coreir_mux #(.width(16)) smax_764_765_766$max_mux(
    .in0(smax_764_765_766$max_mux_in0),
    .in1(smax_764_765_766$max_mux_in1),
    .out(smax_764_765_766$max_mux_out),
    .sel(smax_764_765_766$max_mux_sel)
  );

  //Wire declarations for instance 'smax_764_765_766$scomp' (Module coreir_sge)
  wire [15:0] smax_764_765_766$scomp_in0;
  wire  smax_764_765_766$scomp_out;
  wire [15:0] smax_764_765_766$scomp_in1;
  coreir_sge #(.width(16)) smax_764_765_766$scomp(
    .in0(smax_764_765_766$scomp_in0),
    .in1(smax_764_765_766$scomp_in1),
    .out(smax_764_765_766$scomp_out)
  );

  //Wire declarations for instance 'sub_629_631_632' (Module coreir_sub)
  wire [15:0] sub_629_631_632_in0;
  wire [15:0] sub_629_631_632_out;
  wire [15:0] sub_629_631_632_in1;
  coreir_sub #(.width(16)) sub_629_631_632(
    .in0(sub_629_631_632_in0),
    .in1(sub_629_631_632_in1),
    .out(sub_629_631_632_out)
  );

  //Wire declarations for instance 'sub_632_636_637' (Module coreir_sub)
  wire [15:0] sub_632_636_637_in0;
  wire [15:0] sub_632_636_637_out;
  wire [15:0] sub_632_636_637_in1;
  coreir_sub #(.width(16)) sub_632_636_637(
    .in0(sub_632_636_637_in0),
    .in1(sub_632_636_637_in1),
    .out(sub_632_636_637_out)
  );

  //Wire declarations for instance 'sub_641_643_644' (Module coreir_sub)
  wire [15:0] sub_641_643_644_in0;
  wire [15:0] sub_641_643_644_out;
  wire [15:0] sub_641_643_644_in1;
  coreir_sub #(.width(16)) sub_641_643_644(
    .in0(sub_641_643_644_in0),
    .in1(sub_641_643_644_in1),
    .out(sub_641_643_644_out)
  );

  //Wire declarations for instance 'sub_671_673_674' (Module coreir_sub)
  wire [15:0] sub_671_673_674_in0;
  wire [15:0] sub_671_673_674_out;
  wire [15:0] sub_671_673_674_in1;
  coreir_sub #(.width(16)) sub_671_673_674(
    .in0(sub_671_673_674_in0),
    .in1(sub_671_673_674_in1),
    .out(sub_671_673_674_out)
  );

  //Wire declarations for instance 'sub_679_682_683' (Module coreir_sub)
  wire [15:0] sub_679_682_683_in0;
  wire [15:0] sub_679_682_683_out;
  wire [15:0] sub_679_682_683_in1;
  coreir_sub #(.width(16)) sub_679_682_683(
    .in0(sub_679_682_683_in0),
    .in1(sub_679_682_683_in1),
    .out(sub_679_682_683_out)
  );

  //Wire declarations for instance 'sub_686_688_689' (Module coreir_sub)
  wire [15:0] sub_686_688_689_in0;
  wire [15:0] sub_686_688_689_out;
  wire [15:0] sub_686_688_689_in1;
  coreir_sub #(.width(16)) sub_686_688_689(
    .in0(sub_686_688_689_in0),
    .in1(sub_686_688_689_in1),
    .out(sub_686_688_689_out)
  );

  //Wire declarations for instance 'sub_743_745_746' (Module coreir_sub)
  wire [15:0] sub_743_745_746_in0;
  wire [15:0] sub_743_745_746_out;
  wire [15:0] sub_743_745_746_in1;
  coreir_sub #(.width(16)) sub_743_745_746(
    .in0(sub_743_745_746_in0),
    .in1(sub_743_745_746_in1),
    .out(sub_743_745_746_out)
  );

  //Wire declarations for instance 'sub_746_749_750' (Module coreir_sub)
  wire [15:0] sub_746_749_750_in0;
  wire [15:0] sub_746_749_750_out;
  wire [15:0] sub_746_749_750_in1;
  coreir_sub #(.width(16)) sub_746_749_750(
    .in0(sub_746_749_750_in0),
    .in1(sub_746_749_750_in1),
    .out(sub_746_749_750_out)
  );

  //Wire declarations for instance 'ule100_751_768' (Module coreir_ule)
  wire [15:0] ule100_751_768_in0;
  wire  ule100_751_768_out;
  wire [15:0] ule100_751_768_in1;
  coreir_ule #(.width(16)) ule100_751_768(
    .in0(ule100_751_768_in0),
    .in1(ule100_751_768_in1),
    .out(ule100_751_768_out)
  );

  //Wire declarations for instance 'ult_766_751_767' (Module coreir_ult)
  wire [15:0] ult_766_751_767_in0;
  wire  ult_766_751_767_out;
  wire [15:0] ult_766_751_767_in1;
  coreir_ult #(.width(16)) ult_766_751_767(
    .in0(ult_766_751_767_in0),
    .in1(ult_766_751_767_in1),
    .out(ult_766_751_767_out)
  );

  //All the connections
  assign add_637_640_641_in0[15:0] = sub_632_636_637_out[15:0];
  assign add_637_640_641_in1[15:0] = mul_639_635_640_out[15:0];
  assign sub_641_643_644_in0[15:0] = add_637_640_641_out[15:0];
  assign add_644_646_647_in0[15:0] = sub_641_643_644_out[15:0];
  assign add_644_646_647_in1[15:0] = in_0[15:0];
  assign mul_649_649_650_in0[15:0] = add_644_646_647_out[15:0];
  assign mul_649_649_650_in1[15:0] = add_644_646_647_out[15:0];
  assign mul_691_693_694_in0[15:0] = add_644_646_647_out[15:0];
  assign add_651_652_653_in0[15:0] = const0_0_out[15:0];
  assign add_651_652_653_in1[15:0] = mul_649_649_650_out[15:0];
  assign add_651_654_655_in0[15:0] = add_651_652_653_out[15:0];
  assign add_651_654_655_in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_2_1_out[15:0];
  assign add_651_656_657_in0[15:0] = add_651_654_655_out[15:0];
  assign add_651_656_657_in1[15:0] = lb_grad_xx_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign add_651_658_659_in0[15:0] = add_651_656_657_out[15:0];
  assign add_651_658_659_in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_2_out[15:0];
  assign add_651_660_661_in0[15:0] = add_651_658_659_out[15:0];
  assign add_651_660_661_in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_1_out[15:0];
  assign add_651_662_663_in0[15:0] = add_651_660_661_out[15:0];
  assign add_651_662_663_in1[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign add_651_664_665_in0[15:0] = add_651_662_663_out[15:0];
  assign add_651_664_665_in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_2_out[15:0];
  assign add_651_666_667_in0[15:0] = add_651_664_665_out[15:0];
  assign add_651_666_667_in1[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_1_out[15:0];
  assign add_651_668_669_in0[15:0] = add_651_666_667_out[15:0];
  assign add_651_668_669_in1[15:0] = mul_649_649_650_out[15:0];
  assign ashr_736_739_740_in0[15:0] = add_651_668_669_out[15:0];
  assign add_674_678_679_in0[15:0] = sub_671_673_674_out[15:0];
  assign add_674_678_679_in1[15:0] = mul_676_677_678_out[15:0];
  assign sub_679_682_683_in0[15:0] = add_674_678_679_out[15:0];
  assign add_683_685_686_in0[15:0] = sub_679_682_683_out[15:0];
  assign add_683_685_686_in1[15:0] = in_0[15:0];
  assign sub_686_688_689_in0[15:0] = add_683_685_686_out[15:0];
  assign add_695_696_697_in0[15:0] = const0_0$1_out[15:0];
  assign add_695_696_697_in1[15:0] = mul_691_693_694_out[15:0];
  assign add_695_698_699_in0[15:0] = add_695_696_697_out[15:0];
  assign add_695_698_699_in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_2_1_out[15:0];
  assign add_695_700_701_in0[15:0] = add_695_698_699_out[15:0];
  assign add_695_700_701_in1[15:0] = lb_grad_xy_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign add_695_702_703_in0[15:0] = add_695_700_701_out[15:0];
  assign add_695_702_703_in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_2_out[15:0];
  assign add_695_704_705_in0[15:0] = add_695_702_703_out[15:0];
  assign add_695_704_705_in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_1_out[15:0];
  assign add_695_706_707_in0[15:0] = add_695_704_705_out[15:0];
  assign add_695_706_707_in1[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign add_695_708_709_in0[15:0] = add_695_706_707_out[15:0];
  assign add_695_708_709_in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_2_out[15:0];
  assign add_695_710_711_in0[15:0] = add_695_708_709_out[15:0];
  assign add_695_710_711_in1[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_1_out[15:0];
  assign add_695_712_713_in0[15:0] = add_695_710_711_out[15:0];
  assign add_695_712_713_in1[15:0] = mul_691_693_694_out[15:0];
  assign ashr_738_739_744_in0[15:0] = add_695_712_713_out[15:0];
  assign add_717_718_719_in0[15:0] = const0_0$2_out[15:0];
  assign add_717_718_719_in1[15:0] = mul_715_715_716_out[15:0];
  assign add_717_720_721_in0[15:0] = add_717_718_719_out[15:0];
  assign add_717_720_721_in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_2_1_out[15:0];
  assign add_717_722_723_in0[15:0] = add_717_720_721_out[15:0];
  assign add_717_722_723_in1[15:0] = lb_grad_yy_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign add_717_724_725_in0[15:0] = add_717_722_723_out[15:0];
  assign add_717_724_725_in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_2_out[15:0];
  assign add_717_726_727_in0[15:0] = add_717_724_725_out[15:0];
  assign add_717_726_727_in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_1_out[15:0];
  assign add_717_728_729_in0[15:0] = add_717_726_727_out[15:0];
  assign add_717_728_729_in1[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign add_717_730_731_in0[15:0] = add_717_728_729_out[15:0];
  assign add_717_730_731_in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_2_out[15:0];
  assign add_717_732_733_in0[15:0] = add_717_730_731_out[15:0];
  assign add_717_732_733_in1[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_1_out[15:0];
  assign add_717_734_735_in0[15:0] = add_717_732_733_out[15:0];
  assign add_717_734_735_in1[15:0] = mul_715_715_716_out[15:0];
  assign ashr_737_739_741_in0[15:0] = add_717_734_735_out[15:0];
  assign add_740_741_742_in0[15:0] = ashr_736_739_740_out[15:0];
  assign add_740_741_742_in1[15:0] = ashr_737_739_741_out[15:0];
  assign mul_742_742_747_in0[15:0] = add_740_741_742_out[15:0];
  assign mul_742_742_747_in1[15:0] = add_740_741_742_out[15:0];
  assign ashr_736_739_740_in1[15:0] = const7__739_out[15:0];
  assign mul_740_741_743_in0[15:0] = ashr_736_739_740_out[15:0];
  assign ashr_737_739_741_in1[15:0] = const7__739$1_out[15:0];
  assign mul_740_741_743_in1[15:0] = ashr_737_739_741_out[15:0];
  assign ashr_738_739_744_in1[15:0] = const7__739$2_out[15:0];
  assign mul_744_744_745_in0[15:0] = ashr_738_739_744_out[15:0];
  assign mul_744_744_745_in1[15:0] = ashr_738_739_744_out[15:0];
  assign ashr_747_748_749_in0[15:0] = mul_742_742_747_out[15:0];
  assign ashr_747_748_749_in1[15:0] = const4__748_out[15:0];
  assign sub_746_749_750_in1[15:0] = ashr_747_748_749_out[15:0];
  assign bitand_767_768_769_in0 = ult_766_751_767_out;
  assign bitand_767_768_769_in1 = ule100_751_768_out;
  assign mux_769_770_771_sel = bitand_767_768_769_out;
  assign mux_769_770_771_in1[15:0] = const0__771$1_out[15:0];
  assign ule100_751_768_in0[15:0] = const100_100_out[15:0];
  assign mux_769_770_771_in0[15:0] = const255__770_out[15:0];
  assign mul_634_635_636_in1[15:0] = const2__635_out[15:0];
  assign mul_639_635_640_in1[15:0] = const2__635$1_out[15:0];
  assign mul_676_677_678_in1[15:0] = const2__677_out[15:0];
  assign mul_681_677_682_in1[15:0] = const2__677$1_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_r_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$add_w_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem_raddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_1_1_in[15:0] = lb_grad_xx_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem_waddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem_wdata[15:0] = mul_649_649_650_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$mem_wen = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$enMux_sel = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$veq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_sel = lb_grad_xx_2_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$raddr_mux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$veq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1_valid_term_in = lb_grad_xx_2_stencil_update_stream$mem_1$veq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$enMux_sel = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_sel = lb_grad_xx_2_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_1$waddr_mux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_r_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$add_w_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem_raddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_2_1_in[15:0] = lb_grad_xx_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem_waddr[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$mem_wen = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$enMux_sel = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$veq_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_sel = lb_grad_xx_2_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$raddr_mux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$veq_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2_valid_term_in = lb_grad_xx_2_stencil_update_stream$mem_2$veq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in0[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_in[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$enMux_sel = lb_grad_xx_2_stencil_update_stream_wen_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_sel = lb_grad_xx_2_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_grad_xx_2_stencil_update_stream$mem_2$waddr_mux_in1[8:0] = lb_grad_xx_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_1_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_0_1_in[15:0] = mul_649_649_650_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_2_in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_0_1_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_0_2_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_1_1_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_1_2_in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_1_1_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_1_2_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_2_1_clk = clk;
  assign lb_grad_xx_2_stencil_update_stream$reg_2_2_in[15:0] = lb_grad_xx_2_stencil_update_stream$reg_2_1_out[15:0];
  assign lb_grad_xx_2_stencil_update_stream$reg_2_2_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_r_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$add_w_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem_raddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_1_1_in[15:0] = lb_grad_xy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem_waddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem_wdata[15:0] = mul_691_693_694_out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$mem_wen = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$enMux_sel = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$veq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_sel = lb_grad_xy_2_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$raddr_mux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$veq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1_valid_term_in = lb_grad_xy_2_stencil_update_stream$mem_1$veq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$enMux_sel = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_sel = lb_grad_xy_2_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_1$waddr_mux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_r_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$add_w_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem_raddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_2_1_in[15:0] = lb_grad_xy_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem_waddr[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$mem_wen = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$enMux_sel = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$veq_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_sel = lb_grad_xy_2_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$raddr_mux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$veq_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2_valid_term_in = lb_grad_xy_2_stencil_update_stream$mem_2$veq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in0[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_in[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$enMux_sel = lb_grad_xy_2_stencil_update_stream_wen_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_sel = lb_grad_xy_2_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_grad_xy_2_stencil_update_stream$mem_2$waddr_mux_in1[8:0] = lb_grad_xy_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_1_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_0_1_in[15:0] = mul_691_693_694_out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_2_in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_0_1_out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_0_2_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_1_1_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_1_2_in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_1_1_out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_1_2_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_2_1_clk = clk;
  assign lb_grad_xy_2_stencil_update_stream$reg_2_2_in[15:0] = lb_grad_xy_2_stencil_update_stream$reg_2_1_out[15:0];
  assign lb_grad_xy_2_stencil_update_stream$reg_2_2_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_r_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$add_w_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem_raddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_1_1_in[15:0] = lb_grad_yy_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem_waddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem_wdata[15:0] = mul_715_715_716_out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$mem_wen = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$enMux_sel = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$veq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_sel = lb_grad_yy_2_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$raddr_mux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$veq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1_valid_term_in = lb_grad_yy_2_stencil_update_stream$mem_1$veq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$enMux_sel = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_sel = lb_grad_yy_2_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_1$waddr_mux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_r_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$add_w_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem_raddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_2_1_in[15:0] = lb_grad_yy_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem_waddr[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$mem_wen = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$enMux_sel = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$veq_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_sel = lb_grad_yy_2_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$raddr_mux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$veq_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2_valid_term_in = lb_grad_yy_2_stencil_update_stream$mem_2$veq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in0[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_in[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$enMux_sel = lb_grad_yy_2_stencil_update_stream_wen_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_sel = lb_grad_yy_2_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_grad_yy_2_stencil_update_stream$mem_2$waddr_mux_in1[8:0] = lb_grad_yy_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_1_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_0_1_in[15:0] = mul_715_715_716_out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_2_in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_0_1_out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_0_2_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_1_1_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_1_2_in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_1_1_out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_1_2_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_2_1_clk = clk;
  assign lb_grad_yy_2_stencil_update_stream$reg_2_2_in[15:0] = lb_grad_yy_2_stencil_update_stream$reg_2_1_out[15:0];
  assign lb_grad_yy_2_stencil_update_stream$reg_2_2_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$add_r_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_r_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_w_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$add_w_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$mem_raddr[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_1_in[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign smax_758_759_760$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign smax_758_759_760$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem_waddr[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem_wdata[15:0] = sub_746_749_750_out[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$mem_wen = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_in[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$enMux_sel = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$veq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_sel = lb_p3_cim_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$raddr_mux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$veq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1_valid_term_in = lb_p3_cim_stencil_update_stream$mem_1$veq_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_in[8:0] = lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$enMux_sel = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_sel = lb_p3_cim_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_p3_cim_stencil_update_stream$mem_1$waddr_mux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_r_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_r_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_w_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$add_w_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$mem_raddr[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_1_in[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign smax_754_755_756$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign smax_754_755_756$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem_waddr[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$mem_wen = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_in[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$enMux_sel = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$veq_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_sel = lb_p3_cim_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$raddr_mux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$veq_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2_valid_term_in = lb_p3_cim_stencil_update_stream$mem_2$veq_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in0[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_in[8:0] = lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_out[8:0];
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$enMux_sel = lb_p3_cim_stencil_update_stream_wen_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_sel = lb_p3_cim_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_p3_cim_stencil_update_stream$mem_2$waddr_mux_in1[8:0] = lb_p3_cim_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_1_clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_0_1_in[15:0] = sub_746_749_750_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_2_in[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1_out[15:0];
  assign smax_762_763_764$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1_out[15:0];
  assign smax_762_763_764$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_0_1_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_0_2_clk = clk;
  assign smax_760_761_762$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$reg_0_2_out[15:0];
  assign smax_760_761_762$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_0_2_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_1_clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_1_2_in[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1_out[15:0];
  assign ule100_751_768_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1_out[15:0];
  assign ult_766_751_767_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_1_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_1_2_clk = clk;
  assign smax_756_757_758$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$reg_1_2_out[15:0];
  assign smax_756_757_758$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_1_2_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_1_clk = clk;
  assign lb_p3_cim_stencil_update_stream$reg_2_2_in[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1_out[15:0];
  assign smax_752_753_754$max_mux_in0[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1_out[15:0];
  assign smax_752_753_754$scomp_in1[15:0] = lb_p3_cim_stencil_update_stream$reg_2_1_out[15:0];
  assign lb_p3_cim_stencil_update_stream$reg_2_2_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$add_r_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_r_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_r_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_w_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$add_w_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$c1_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$add_w_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_eq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_eq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$max_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$mem_raddr[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_1_in[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign mul_639_635_640_in0[15:0] = lb_padded_2_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem_waddr[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem_wdata[15:0] = in_0[15:0];
  assign lb_padded_2_stencil_update_stream$mem_1$mem_wen = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr_mux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_in[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$enMux_sel = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$veq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux_sel = lb_padded_2_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_padded_2_stencil_update_stream$mem_1$raddr_mux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$veq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1_valid_term_in = lb_padded_2_stencil_update_stream$mem_1$veq_out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr_mux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_in[8:0] = lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$enMux_sel = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux_sel = lb_padded_2_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_padded_2_stencil_update_stream$mem_1$waddr_mux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_1$zero_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_r_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_r_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_r_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_w_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$add_w_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$c1_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$add_w_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_eq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_eq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$max_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$mem_raddr[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$reg_2_1_in[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign sub_629_631_632_in0[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign sub_686_688_689_in1[15:0] = lb_padded_2_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem_waddr[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$mem_wen = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr_mux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_in[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$enMux_sel = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$veq_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$raddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux_sel = lb_padded_2_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_padded_2_stencil_update_stream$mem_2$raddr_mux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$veq_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2_valid_term_in = lb_padded_2_stencil_update_stream$mem_2$veq_out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in0[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr_mux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_in[8:0] = lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_out[8:0];
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$enMux_sel = lb_padded_2_stencil_update_stream_wen_out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux_sel = lb_padded_2_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_padded_2_stencil_update_stream$mem_2$waddr_mux_in1[8:0] = lb_padded_2_stencil_update_stream$mem_2$zero_const_out[8:0];
  assign lb_padded_2_stencil_update_stream$reg_0_1_clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_0_1_in[15:0] = in_0[15:0];
  assign lb_padded_2_stencil_update_stream$reg_0_2_in[15:0] = lb_padded_2_stencil_update_stream$reg_0_1_out[15:0];
  assign mul_676_677_678_in0[15:0] = lb_padded_2_stencil_update_stream$reg_0_1_out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_0_2_clk = clk;
  assign sub_641_643_644_in1[15:0] = lb_padded_2_stencil_update_stream$reg_0_2_out[15:0];
  assign sub_671_673_674_in0[15:0] = lb_padded_2_stencil_update_stream$reg_0_2_out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_1_clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_1_2_in[15:0] = lb_padded_2_stencil_update_stream$reg_1_1_out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_1_2_clk = clk;
  assign mul_634_635_636_in0[15:0] = lb_padded_2_stencil_update_stream$reg_1_2_out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_2_1_clk = clk;
  assign lb_padded_2_stencil_update_stream$reg_2_2_in[15:0] = lb_padded_2_stencil_update_stream$reg_2_1_out[15:0];
  assign mul_681_677_682_in0[15:0] = lb_padded_2_stencil_update_stream$reg_2_1_out[15:0];
  assign lb_padded_2_stencil_update_stream$reg_2_2_clk = clk;
  assign sub_629_631_632_in1[15:0] = lb_padded_2_stencil_update_stream$reg_2_2_out[15:0];
  assign sub_671_673_674_in1[15:0] = lb_padded_2_stencil_update_stream$reg_2_2_out[15:0];
  assign sub_632_636_637_in1[15:0] = mul_634_635_636_out[15:0];
  assign sub_679_682_683_in1[15:0] = mul_681_677_682_out[15:0];
  assign mul_691_693_694_in1[15:0] = sub_686_688_689_out[15:0];
  assign mul_715_715_716_in0[15:0] = sub_686_688_689_out[15:0];
  assign mul_715_715_716_in1[15:0] = sub_686_688_689_out[15:0];
  assign sub_743_745_746_in0[15:0] = mul_740_741_743_out[15:0];
  assign sub_743_745_746_in1[15:0] = mul_744_744_745_out[15:0];
  assign out[15:0] = mux_769_770_771_out[15:0];
  assign smax_752_753_754$max_mux_in1[15:0] = sub_746_749_750_out[15:0];
  assign smax_754_755_756$max_mux_in1[15:0] = smax_752_753_754$max_mux_out[15:0];
  assign smax_754_755_756$scomp_in0[15:0] = smax_752_753_754$max_mux_out[15:0];
  assign smax_752_753_754$max_mux_sel = smax_752_753_754$scomp_out;
  assign smax_752_753_754$scomp_in0[15:0] = sub_746_749_750_out[15:0];
  assign smax_756_757_758$max_mux_in1[15:0] = smax_754_755_756$max_mux_out[15:0];
  assign smax_756_757_758$scomp_in0[15:0] = smax_754_755_756$max_mux_out[15:0];
  assign smax_754_755_756$max_mux_sel = smax_754_755_756$scomp_out;
  assign smax_758_759_760$max_mux_in1[15:0] = smax_756_757_758$max_mux_out[15:0];
  assign smax_758_759_760$scomp_in0[15:0] = smax_756_757_758$max_mux_out[15:0];
  assign smax_756_757_758$max_mux_sel = smax_756_757_758$scomp_out;
  assign smax_760_761_762$max_mux_in1[15:0] = smax_758_759_760$max_mux_out[15:0];
  assign smax_760_761_762$scomp_in0[15:0] = smax_758_759_760$max_mux_out[15:0];
  assign smax_758_759_760$max_mux_sel = smax_758_759_760$scomp_out;
  assign smax_762_763_764$max_mux_in1[15:0] = smax_760_761_762$max_mux_out[15:0];
  assign smax_762_763_764$scomp_in0[15:0] = smax_760_761_762$max_mux_out[15:0];
  assign smax_760_761_762$max_mux_sel = smax_760_761_762$scomp_out;
  assign smax_764_765_766$max_mux_in1[15:0] = smax_762_763_764$max_mux_out[15:0];
  assign smax_764_765_766$scomp_in0[15:0] = smax_762_763_764$max_mux_out[15:0];
  assign smax_762_763_764$max_mux_sel = smax_762_763_764$scomp_out;
  assign smax_764_765_766$max_mux_in0[15:0] = sub_746_749_750_out[15:0];
  assign ult_766_751_767_in0[15:0] = smax_764_765_766$max_mux_out[15:0];
  assign smax_764_765_766$max_mux_sel = smax_764_765_766$scomp_out;
  assign smax_764_765_766$scomp_in1[15:0] = sub_746_749_750_out[15:0];
  assign sub_632_636_637_in0[15:0] = sub_629_631_632_out[15:0];
  assign sub_746_749_750_in0[15:0] = sub_743_745_746_out[15:0];

endmodule //DesignTop
