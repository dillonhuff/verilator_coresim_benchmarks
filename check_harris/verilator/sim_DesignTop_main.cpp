#include "../lodepng.h"

#include "VDesignTop.h"
#include "verilated.h"

#include "DesignTop_sim.h"

#include <fstream>
#include <iostream>
#include <string>
#include <vector>
#include <bitset>

using namespace std;

void set_memory(uint16_t* const mem, const int len) {
  for (int i = 0; i < len; i++) {
    mem[i] = 0;
  }
}

void set_defaults(circuit_state* state) {
  state->in_0_auto_reg = 0;
  state->self_clk_last = 0;
  state->self_clk = 0;
  state->lb_padded_2_stencil_update_stream$reg_2_2 = 0;
  state->lb_padded_2_stencil_update_stream$reg_1_2 = 0;
  state->lb_padded_2_stencil_update_stream$reg_0_2 = 0;
  state->lb_padded_2_stencil_update_stream$reg_0_1 = 0;
  state->lb_padded_2_stencil_update_stream$reg_2_1 = 0;
  state->lb_padded_2_stencil_update_stream$mem_2$waddr$reg0 = 0;
  state->lb_padded_2_stencil_update_stream$mem_2$raddr$reg0 = 0;

  //state->lb_padded_2_stencil_update_stream$mem_2$mem[ 486 ];  
  set_memory( state->lb_padded_2_stencil_update_stream$mem_2$mem, 486 );

  state->lb_padded_2_stencil_update_stream$mem_1$waddr$reg0 = 0;
  state->lb_padded_2_stencil_update_stream$mem_1$raddr$reg0 = 0;

  //state->lb_padded_2_stencil_update_stream$mem_1$mem[ 486 ];
  set_memory(state->lb_padded_2_stencil_update_stream$mem_1$mem, 486);

  state->lb_p3_cim_stencil_update_stream$reg_1_2 = 0;
  state->lb_p3_cim_stencil_update_stream$reg_0_2 = 0;
  state->lb_p3_cim_stencil_update_stream$reg_0_1 = 0;
  state->lb_p3_cim_stencil_update_stream$reg_2_1 = 0;
  state->lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0 = 0;
  state->lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0 = 0;

  //state->lb_p3_cim_stencil_update_stream$mem_2$mem[ 482 ];
  set_memory( state->lb_p3_cim_stencil_update_stream$mem_2$mem, 482 );

  state->lb_p3_cim_stencil_update_stream$reg_1_1 = 0;
  state->lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0 = 0;
  state->lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0 = 0;

  //state->lb_p3_cim_stencil_update_stream$mem_1$mem[ 482 ];
  set_memory(state->lb_p3_cim_stencil_update_stream$mem_1$mem, 482 );

  state->lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0 = 0;
  state->lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0 = 0;

  //state->lb_grad_yy_2_stencil_update_stream$mem_2$mem[ 484 ];
  set_memory(state->lb_grad_yy_2_stencil_update_stream$mem_2$mem, 484 );

  state->lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0 = 0;
  state->lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0 = 0;

  //state->lb_grad_yy_2_stencil_update_stream$mem_1$mem[ 484 ];
  set_memory(state->lb_grad_yy_2_stencil_update_stream$mem_1$mem, 484 );

  state->lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0 = 0;
  state->lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0 = 0;

  //state->lb_grad_xy_2_stencil_update_stream$mem_2$mem[ 484 ];
  set_memory(state->lb_grad_xy_2_stencil_update_stream$mem_2$mem, 484);

  state->lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0 = 0;
  state->lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0 = 0;

  //state->lb_grad_xy_2_stencil_update_stream$mem_1$mem[ 484 ];
  set_memory(state->lb_grad_xy_2_stencil_update_stream$mem_1$mem, 484);

  state->lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0 = 0;
  state->lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0 = 0;

  //state->lb_grad_xx_2_stencil_update_stream$mem_2$mem[ 484 ];
  set_memory(state->lb_grad_xx_2_stencil_update_stream$mem_2$mem, 484);

  state->lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0 = 0;
  state->lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0 = 0;

  //state->lb_grad_xx_2_stencil_update_stream$mem_1$mem[ 484 ];
  set_memory(state->lb_grad_xx_2_stencil_update_stream$mem_1$mem, 484);

  state->lb_grad_yy_2_stencil_update_stream$reg_0_1 = 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_0_2 = 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_1_1 = 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_1_2 = 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_2_1 = 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_0_1 = 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_0_2 = 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_1_1 = 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_1_2 = 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_2_1 = 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_0_1 = 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_0_2 = 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_1_1 = 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_1_2 = 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_2_1 = 0;
  state->self_in_0 = 0;
  state->self_out = 0;
  //state->lb_grad_xx_2_stencil_update_stream$reg_2_2 = 0;
  //state->lb_grad_xy_2_stencil_update_stream$reg_2_2 = 0;
  //state->lb_grad_yy_2_stencil_update_stream$reg_2_2 = 0;
  //state->lb_p3_cim_stencil_update_stream$reg_2_2 = 0;
  state->lb_padded_2_stencil_update_stream$reg_1_1 = 0;


  // Defaults again
  state->self_clk_last= 0;
  state->self_clk= 0;
  state->lb_padded_2_stencil_update_stream$reg_2_2= 0;
  state->lb_padded_2_stencil_update_stream$reg_1_2= 0;
  state->lb_padded_2_stencil_update_stream$reg_0_2= 0;
  state->lb_padded_2_stencil_update_stream$reg_2_1= 0;
  state->lb_padded_2_stencil_update_stream$mem_2$waddr$reg0= 0;
  state->lb_padded_2_stencil_update_stream$mem_2$raddr$reg0= 0;

  state->lb_padded_2_stencil_update_stream$mem_1$waddr$reg0= 0;
  state->lb_padded_2_stencil_update_stream$mem_1$raddr$reg0= 0;

  state->lb_p3_cim_stencil_update_stream$reg_1_2= 0;
  state->lb_p3_cim_stencil_update_stream$reg_0_2= 0;
  state->lb_p3_cim_stencil_update_stream$reg_0_1= 0;
  state->lb_p3_cim_stencil_update_stream$reg_2_1= 0;
  state->lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0= 0;
  state->lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0= 0;

  state->lb_p3_cim_stencil_update_stream$reg_1_1= 0;
  state->lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0= 0;
  state->lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0= 0;

  state->lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0= 0;
  state->lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0= 0;

  state->lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0= 0;
  state->lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0= 0;

  state->lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0= 0;
  state->lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0= 0;

  state->lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0= 0;
  state->lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0= 0;

  state->lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0= 0;
  state->lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0= 0;

  state->lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0= 0;
  state->lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0= 0;

  state->lb_padded_2_stencil_update_stream$reg_0_1= 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_0_1= 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_0_2= 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_1_1= 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_1_2= 0;
  state->lb_grad_yy_2_stencil_update_stream$reg_2_1= 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_0_1= 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_0_2= 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_1_1= 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_1_2= 0;
  state->lb_grad_xy_2_stencil_update_stream$reg_2_1= 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_0_1= 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_0_2= 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_1_1= 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_1_2= 0;
  state->lb_grad_xx_2_stencil_update_stream$reg_2_1= 0;
  state->in_0_auto_reg= 0;
  state->self_out= 0;
  state->lb_padded_2_stencil_update_stream$reg_1_1= 0;
  state->self_in_0= 0;

}


int main(int argc, char** argv) {

  std::vector<unsigned char> image; //the raw pixels
  unsigned width, height;

  unsigned error = lodepng::decode(image, width, height, "../../images/input_conv_bw.png");

  if(error) {
    std::cout << "decoder error " << error << ": " << lodepng_error_text(error) << std::endl;
    assert(false);
  }

  cout << "Width  = " << width << endl;
  cout << "Height = " << height << endl;


  cout << "Starting verilator" << endl;

  Verilated::commandArgs(argc, argv);
  VDesignTop* top = new VDesignTop;

  VL_IN8(clk,0,1);
  VL_IN16(in_0, 16, 0);
  VL_OUT16(out, 16, 0);

  top->clk = 1;
  top->in_0 = 1;//in_0;
  top->out = 0;//out;

  circuit_state state;
  set_defaults(&state);

  state.self_clk = 1;
  state.self_clk_last = 0;
  state.self_in_0 = 1;
  state.self_out = 0;
  
  vector<unsigned char> output;

  clock_t start, end;

  start = clock();
  
  for (int i = 0; i < image.size(); i++) {
    top->clk = i % 2;

    state.self_clk = i % 2;

    top->eval();

    simulate(&state);

    state.self_clk_last = state.self_clk;


    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;

    //     	    & (0x64U <= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg)))
    //     	    ? 0U : 0xffU);
    
    // cout << "out = " << (int) top->out << endl;

    cout << "--- Half cycle" << endl;
    cout << "top->in_0       = " << (int) top->in_0 << endl;
    cout << "state.self_in_0 = " << (int) state.self_in_0 << endl;

    assert(top->in_0 == state.self_in_0);
    uint16_t rv = state.lb_padded_2_stencil_update_stream$reg_0_1;
    uint16_t eval_rv = top->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg;

    cout << "state.rv = " << (int) rv << endl;
    cout << "top.rv   = " << (int) eval_rv << endl;

    assert(rv == eval_rv);

//     cout << (int) top->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata << endl;
//     cout << (int) state.lb_grad_xx_2_stencil_update_stream$mem_2$rdata << endl;

//     cout << (int) top->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata << endl;
//     cout << (int) state.lb_grad_xy_2_stencil_update_stream$mem_2$rdata$reg0 << endl;

// cout << (int) top->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata << endl;    
//     cout << (int) state.lb_grad_yy_2_stencil_update_stream$mem_2$rdata$reg0 << endl;
    
    cout << "top->out       = " << (int) top->out << endl;
    cout << "state.self_out = " << (int) state.self_out << endl;

    // Note: Addresses can probably be removed by more advanced logic duplication

    if (top->clk == 0) {

      output.push_back(top->out);
    }

    if (top->clk == 1) {

      state.self_in_0 = image[i];
      top->in_0 = image[i];
    }
  }

  end = std::clock();

  cout << "DONE." << endl;

  double time_ms =
    (end - start) / (double)(CLOCKS_PER_SEC / 1000);

  cout << "Verilator time = " << time_ms << " ms" << endl;

  std::ofstream outf("verilator_harris_output.txt");
  for (auto& pixel : output) {
    outf << bitset<16>(pixel) << endl;
  }
  outf.close();

}
