#include "DesignTop_sim.h"
#include <immintrin.h>
using namespace bsim;

#define SIGN_EXTEND(start, end, x) (((x) & ((1ULL << (start)) - 1)) | (((x) & (1ULL << ((start) - 1))) ? (((1ULL << ((end) - (start))) - 1) << (start)) : 0))

#define MASK(width, expr) (((1ULL << (width)) - 1) & ((expr)))

void simulate_0( circuit_state* __restrict const state ) {

// Variable declarations

// Internal variables
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$zero_const_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$max_const_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$c1_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$add_w_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$veq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$add_r_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$zero_const_out;
uint8_t  lb_p4_clamped_stencil_update_stream_wen_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$max_const_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$c1_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$add_w_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$veq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$add_r_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out;
uint16_t  lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out;
uint8_t  lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out;
uint16_t  lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata;
uint16_t  in_0_auto_reg_out;
uint16_t  const7_7_out;
uint16_t  mul_3507_351_out;
uint16_t  const5_5_out;
uint16_t  mul_3465_347_out;
uint16_t  const3_3_out;
uint16_t  mul_3423_343_out;
uint16_t  const0_0_out;
uint16_t  add_340_343_344_out;
uint16_t  add_340_347_348_out;
uint16_t  add_340_351_352_out;

// Simulation code
if (((state->self_clk_last) == 0) && ((state->self_clk) == 1)) {
lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_2$add_w_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata = ((state->lb_p4_clamped_stencil_update_stream$mem_2$mem)[ lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out ]);
lb_p4_clamped_stencil_update_stream$mem_2$add_r_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_1$add_w_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata = ((state->lb_p4_clamped_stencil_update_stream$mem_1$mem)[ lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out ]);
lb_p4_clamped_stencil_update_stream$mem_1$add_r_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out  +  0b0001)));
in_0_auto_reg_out = (state->in_0_auto_reg);
(state->self_out) = ((uint16_t) (((uint16_t) (((uint16_t) (0b0000000000000000  +  ((uint16_t) (lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata  *  0b0000000000000011))))  +  ((uint16_t) (lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata  *  0b0000000000000101))))  +  ((uint16_t) (in_0_auto_reg_out  *  0b0000000000000111))));
(state->lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0) = (0b1 ? (((uint8_t) MASK(0b00000000000000000000000000000001, (lb_p4_clamped_stencil_update_stream$mem_2$add_w_out  ==  0b1010))) ? 0b0000 : lb_p4_clamped_stencil_update_stream$mem_2$add_w_out) : lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out);
(state->lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0) = (0b1 ? (((uint8_t) MASK(0b00000000000000000000000000000001, (lb_p4_clamped_stencil_update_stream$mem_2$add_r_out  ==  0b1010))) ? 0b0000 : lb_p4_clamped_stencil_update_stream$mem_2$add_r_out) : lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out);
(state->lb_p4_clamped_stencil_update_stream$mem_2$mem)[ lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out ] = ((0b1) ? lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata : (state->lb_p4_clamped_stencil_update_stream$mem_2$mem)[ lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out ]);
(state->lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0) = (0b1 ? (((uint8_t) MASK(0b00000000000000000000000000000001, (lb_p4_clamped_stencil_update_stream$mem_1$add_w_out  ==  0b1010))) ? 0b0000 : lb_p4_clamped_stencil_update_stream$mem_1$add_w_out) : lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out);
(state->lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0) = (0b1 ? (((uint8_t) MASK(0b00000000000000000000000000000001, (lb_p4_clamped_stencil_update_stream$mem_1$add_r_out  ==  0b1010))) ? 0b0000 : lb_p4_clamped_stencil_update_stream$mem_1$add_r_out) : lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out);
(state->lb_p4_clamped_stencil_update_stream$mem_1$mem)[ lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out ] = ((0b1) ? in_0_auto_reg_out : (state->lb_p4_clamped_stencil_update_stream$mem_1$mem)[ lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out ]);
(state->in_0_auto_reg) = (state->self_in_0);
lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_2$add_w_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata = ((state->lb_p4_clamped_stencil_update_stream$mem_2$mem)[ lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out ]);
lb_p4_clamped_stencil_update_stream$mem_2$add_r_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_1$add_w_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out  +  0b0001)));
lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out = (state->lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0);
lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata = ((state->lb_p4_clamped_stencil_update_stream$mem_1$mem)[ lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out ]);
lb_p4_clamped_stencil_update_stream$mem_1$add_r_out = ((uint8_t) MASK(0b00000000000000000000000000000100, (lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out  +  0b0001)));
in_0_auto_reg_out = (state->in_0_auto_reg);
(state->self_out) = ((uint16_t) (((uint16_t) (((uint16_t) (0b0000000000000000  +  ((uint16_t) (lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata  *  0b0000000000000011))))  +  ((uint16_t) (lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata  *  0b0000000000000101))))  +  ((uint16_t) (in_0_auto_reg_out  *  0b0000000000000111))));

}

// ----- Update pure combinational logic

// ----- Done
}

void simulate( circuit_state* __restrict const state ) {
simulate_0( state );
}
