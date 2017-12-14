#include "../lodepng.h"

#include "VDesignTop.h"
#include "verilated.h"

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
  
  vector<unsigned char> output;

  clock_t start, end;

  start = clock();
  
  for (int i = 0; i < image.size(); i++) {
    top->clk = i % 2;
    top->eval();


    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__smax_762_763_764__DOT__max_mux___05Fout << endl;
    // cout << (int) top->v__DOT__sub_746_749_750___05Fout << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;
    // cout << (int) top->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg << endl;

    //     	    & (0x64U <= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__DOT__reg_1_1__DOT__outReg)))
    //     	    ? 0U : 0xffU);
    
    //cout << "out = " << (int) top->out << endl;
    
    if (top->clk == 0) {
      output.push_back(top->out);
    }

    if (top->clk == 1) {

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
