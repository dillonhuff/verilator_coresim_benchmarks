#include "manyOps_sim.h"

#include <iostream>
#include <ctime>

using namespace std;

int main() {

  circuit_state state;
  // Set defaults
  // for (int i = 0; i < 10; i++) {
  //   state.lb_p4_clamped_stencil_update_stream$mem_1$mem[ i ]= 0;
  // }

  // state.lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0 = 0;
  // state.lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0 = 0;

  // for (int i = 0; i < 10; i++) {
  //   state.lb_p4_clamped_stencil_update_stream$mem_2$mem[ i ] = 0;
  // }

  // state.lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0 = 0;
  // state.lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0 = 0;

  // state.self_in_0 = 1;

  //int nRuns = 400000;
  int nRuns = 1e6;

  // std::clock_t start, end;
  // start = std::clock();

  auto start = std::chrono::high_resolution_clock::now();

  state.self_clk = 1;
  state.self_clk_last = 0;

  state.self_clk_last = 1; //state.self_clk;
  for (int i = 0; i < nRuns; i++) {
    state.self_clk = i % 2;

    simulate(&state);
    //cout << "out " << i << " = " << state.self_out << endl;

    state.self_clk_last = state.self_clk;
  }

  auto end = std::chrono::high_resolution_clock::now();  

  //end = std::clock();

  cout << "DONE." << endl;
  
  auto time_ms =
    std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
  
  // double time_ms =
  //   (end - start) / (double)(CLOCKS_PER_SEC / 1000);

  cout << "Time to compute " << nRuns << " half cycles = " << time_ms << " ms" << endl;

  double time_per_cycle = time_ms / (double) nRuns;
  cout << "Time per cycle for " << nRuns << " = " << time_per_cycle << " ms" << endl;
  
  cout << "out_0 = " << state.self_out_0 << endl;

}
