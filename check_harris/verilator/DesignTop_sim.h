#include <stdint.h>
#include <cstdio>

#include "bit_vector.h"

using namespace bsim;

struct __attribute__((packed, aligned(32))) circuit_state {
	uint8_t self_clk_last;
	uint8_t self_clk;
	uint16_t lb_padded_2_stencil_update_stream$reg_2_2;
	uint16_t lb_padded_2_stencil_update_stream$reg_1_2;
	uint16_t lb_padded_2_stencil_update_stream$reg_0_2;
	uint16_t lb_padded_2_stencil_update_stream$reg_2_1;
	uint16_t lb_padded_2_stencil_update_stream$mem_2$waddr$reg0;
	uint16_t lb_padded_2_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_padded_2_stencil_update_stream$mem_2$mem[ 486 ];
	uint16_t lb_padded_2_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_padded_2_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_padded_2_stencil_update_stream$mem_1$mem[ 486 ];
	uint16_t lb_p3_cim_stencil_update_stream$reg_1_2;
	uint16_t lb_p3_cim_stencil_update_stream$reg_0_2;
	uint16_t lb_p3_cim_stencil_update_stream$reg_0_1;
	uint16_t lb_p3_cim_stencil_update_stream$reg_2_1;
	uint16_t lb_p3_cim_stencil_update_stream$mem_2$waddr$reg0;
	uint16_t lb_p3_cim_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_p3_cim_stencil_update_stream$mem_2$mem[ 482 ];
	uint16_t lb_p3_cim_stencil_update_stream$reg_1_1;
	uint16_t lb_p3_cim_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_p3_cim_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_p3_cim_stencil_update_stream$mem_1$mem[ 482 ];
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_2$waddr$reg0;
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_2$mem[ 484 ];
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_grad_yy_2_stencil_update_stream$mem_1$mem[ 484 ];
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_2$waddr$reg0;
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_2$mem[ 484 ];
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_grad_xy_2_stencil_update_stream$mem_1$mem[ 484 ];
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_2$waddr$reg0;
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_2$raddr$reg0;
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_2$mem[ 484 ];
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_1$raddr$reg0;
	uint16_t lb_grad_xx_2_stencil_update_stream$mem_1$mem[ 484 ];
	uint16_t lb_padded_2_stencil_update_stream$reg_0_1;
	uint16_t lb_grad_yy_2_stencil_update_stream$reg_0_1;
	uint16_t lb_grad_yy_2_stencil_update_stream$reg_0_2;
	uint16_t lb_grad_yy_2_stencil_update_stream$reg_1_1;
	uint16_t lb_grad_yy_2_stencil_update_stream$reg_1_2;
	uint16_t lb_grad_yy_2_stencil_update_stream$reg_2_1;
	uint16_t lb_grad_xy_2_stencil_update_stream$reg_0_1;
	uint16_t lb_grad_xy_2_stencil_update_stream$reg_0_2;
	uint16_t lb_grad_xy_2_stencil_update_stream$reg_1_1;
	uint16_t lb_grad_xy_2_stencil_update_stream$reg_1_2;
	uint16_t lb_grad_xy_2_stencil_update_stream$reg_2_1;
	uint16_t lb_grad_xx_2_stencil_update_stream$reg_0_1;
	uint16_t lb_grad_xx_2_stencil_update_stream$reg_0_2;
	uint16_t lb_grad_xx_2_stencil_update_stream$reg_1_1;
	uint16_t lb_grad_xx_2_stencil_update_stream$reg_1_2;
	uint16_t lb_grad_xx_2_stencil_update_stream$reg_2_1;
	uint16_t in_0_auto_reg;
	uint16_t self_out;
	uint16_t lb_padded_2_stencil_update_stream$reg_1_1;
	uint16_t self_in_0;
};

void simulate( circuit_state* __restrict const state );
