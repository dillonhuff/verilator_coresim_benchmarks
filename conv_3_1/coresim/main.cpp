#include "DesignTop_sim.h"

#include <iostream>
#include <ctime>

using namespace std;

int main() {

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



  int nRuns = 1e5;

  std::clock_t start, end;
  start = std::clock();

  // Note: Need to read from stored state of stateful elements
  // This produces 205 on half cycle 40, counting from 0
  state.self_in_0 = 1;  
  state.self_clk = 1;
  state.self_clk_last = 0;

  state.self_clk_last = 1; //state.self_clk;
  for (int i = 0; i < nRuns; i++) {
    state.self_clk = i % 2;

    simulate(&state);

    state.self_clk_last = state.self_clk;
    
    // if ((state.self_clk_last == 0) &&
    //     ((i + 1) % 2 == 1)) {
    //cout << "out " << i << " = " << state.self_out << endl;
    // }


    if ((state.self_clk_last == 1) &&
        ((i + 1) % 2 == 0)) {
      state.self_in_0 = (state.self_in_0 + 1) % 25;
    }
  }

  state.self_clk = 1;
  state.self_clk_last = 0;

  end = std::clock();

  cout << "DONE." << endl;

  double time_ms =
    (end - start) / (double)(CLOCKS_PER_SEC / 1000);

  cout << "Time to compute " << nRuns << " half cycles = " << time_ms << " ms" << endl;
  double time_per_cycle = time_ms / nRuns;
  cout << "Time per cycle for " << nRuns << " = " << time_per_cycle << " ms" << endl;
  
  cout << "out = " << state.self_out << endl;

}
