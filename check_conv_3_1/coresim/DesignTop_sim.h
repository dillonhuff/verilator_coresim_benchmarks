#include <stdint.h>
#include <cstdio>

#include "bit_vector.h"

using namespace bsim;

struct __attribute__((packed, aligned(32))) circuit_state {
	uint8_t self_clk_last;
	uint8_t self_clk;
	uint8_t lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0;
	uint8_t lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_p4_clamped_stencil_update_stream$mem_2$mem[ 10 ];
	uint8_t lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0;
	uint8_t lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_p4_clamped_stencil_update_stream$mem_1$mem[ 10 ];
	uint16_t in_0_auto_reg;
	uint16_t self_out;
	uint16_t self_in_0;
};

void simulate( circuit_state* __restrict const state );
