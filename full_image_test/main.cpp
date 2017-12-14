#include "DesignTop_sim.h"

#include "lodepng.h"

#include <bitset>

using namespace std;

int main(const int argc, char** argv) {
  std::vector<unsigned char> image; //the raw pixels
  unsigned width, height;

  unsigned error = lodepng::decode(image, width, height, "./input_conv_bw.png");
  //unsigned error = lodepng::decode(image, width, height, "./input.png");

  //if there's an error, display it
  if(error) {
    std::cout << "decoder error " << error << ": " << lodepng_error_text(error) << std::endl;
  }

  cout << "Width  = " << width << endl;
  cout << "Height = " << height << endl;

  cout << "Starting CoreSim" << endl;
  circuit_state state;

  // Set defaults
  for (int i = 0; i < 10; i++) {
    state.lb_p4_clamped_stencil_update_stream$mem_1$mem[ i ]= 0;
  }

  state.lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0 = 0;
  state.lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0 = 0;

  for (int i = 0; i < 10; i++) {
    state.lb_p4_clamped_stencil_update_stream$mem_2$mem[ i ] = 0;
  }

  state.lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0 = 0;
  state.lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0 = 0;

  state.self_in_0 = 1;
  state.self_clk = 1;
  state.self_clk_last = 0;

  state.self_clk_last = 1;
  for (int i = 0; i < image.size(); i++) {
    state.self_clk = i % 2;

    simulate(&state);

    state.self_clk_last = state.self_clk;
    
    if ((state.self_clk_last == 0) &&
        ((i + 1) % 2 == 1)) {
      cout << "out " << i << " = " << state.self_out << endl;
    }

    if ((state.self_clk_last == 1) &&
        ((i + 1) % 2 == 0)) {
      state.self_in_0 = image[i];
    }
  }

}
