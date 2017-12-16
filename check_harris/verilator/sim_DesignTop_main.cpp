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

  // circuit_state state;
  // set_defaults(&state);

  // state.self_clk = 1;
  // state.self_clk_last = 0;
  // state.self_in_0 = 1;
  // state.self_out = 0b0000000011111111;
  //state.self_out = 0;
  
  vector<unsigned char> output;

  clock_t start, end;

  start = clock();
  
  for (int i = 0; i < image.size(); i++) {
    top->clk = i % 2;

    //state.self_clk = i % 2;

    //cout << "####### Executing Top ########" << endl;
    top->eval();
    //cout << "####### Done Top ########" << endl;

    //cout << "####### Executing State ########" << endl;
    //simulate(&state);
    //cout << "####### Done State ########" << endl;

    //state.self_clk_last = state.self_clk;


    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;

    //     	    & (0x64U <= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg)))
    //     	    ? 0U : 0xffU);
    
    // cout << "out = " << (int) top->out << endl;

    // cout << "--- Half cycle " << i << endl;
    // cout << "state.self_clk = " << (int) state.self_clk << endl;
    // cout << "top->clk       = " << (int) top->clk << endl;

    //assert(state.self_clk == top->clk);

    // cout << "top->in_0       = " << (int) top->in_0 << endl;
    // cout << "state.self_in_0 = " << (int) state.self_in_0 << endl;

    //assert(top->in_0 == state.self_in_0);

    // uint16_t rv = state.lb_padded_2_stencil_update_stream$reg_0_1;
    // uint16_t eval_rv = top->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg;

    // cout << "state.rv = " << (int) rv << endl;
    // cout << "top.rv   = " << (int) eval_rv << endl;

    // assert(rv == eval_rv);

    // cout << "top->out       = " << (int) top->out << endl;
    // cout << "state.self_out = " << (int) state.self_out << endl;

    //assert(top->out == state.self_out);

    //compare_memories(&state, top);

    // Note: Addresses can probably be removed by more advanced logic duplication

    if (top->clk == 0) {

      output.push_back(top->out);
    }

    if (top->clk == 1) {

      //state.self_in_0 = image[i];
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
