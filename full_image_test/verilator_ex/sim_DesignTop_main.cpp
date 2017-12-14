#include <iostream>
#include <ctime>
#include <cstdlib>

#include "VDesignTop.h"
#include "verilated.h"

#include "../lodepng.h"

using namespace std;

int main(int argc, char** argv) {
  Verilated::commandArgs(argc, argv);
  VDesignTop* top = new VDesignTop;

  VL_IN8(clk,0,1);
  //char	__VpadToAlign1[1];
  VL_IN16(in_0, 16, 0);
  VL_OUT16(out, 16, 0);

  top->clk = 1;
  top->in_0 = 1;//in_0;
  top->out = 0;//out;

  cout << "Initial out = " << top->out << endl;
  cout << "Initial in  = " << top->in_0 << endl;

  std::vector<unsigned char> image; //the raw pixels
  unsigned width, height;

  unsigned error = lodepng::decode(image, width, height, "../input_conv_bw.png");
  //unsigned error = lodepng::decode(image, width, height, "./input.png");

  //if there's an error, display it
  if(error) {
    std::cout << "decoder error " << error << ": " << lodepng_error_text(error) << std::endl;
  }

  cout << "Width  = " << width << endl;
  cout << "Height = " << height << endl;

  for (int i = 0; i < image.size(); i++) {
    top->clk = i % 2;
    top->eval();

    if (top->clk == 0) {
    cout << "out " << i << " = " << top->out << endl;
    }

    if (top->clk == 1) {

      top->in_0 = image[i];
    }
  }
  
}
