// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VDesignTop.h for the primary calling header

#include <iostream>

#include "VDesignTop.h"        // For This
#include "VDesignTop__Syms.h"

using namespace std;

//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VDesignTop) {
    VDesignTop__Syms* __restrict vlSymsp = __VlSymsp = new VDesignTop__Syms(this, name());
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    clk = VL_RAND_RESET_I(1);
    in_0 = VL_RAND_RESET_I(16);
    out = VL_RAND_RESET_I(16);
    v__DOT__add_644_646_647___05Fout = VL_RAND_RESET_I(16);
    v__DOT__add_695_712_713___05Fout = VL_RAND_RESET_I(16);
    v__DOT__add_740_741_742___05Fout = VL_RAND_RESET_I(16);
    v__DOT__ashr_736_739_740___05Fout = VL_RAND_RESET_I(16);
    v__DOT__ashr_737_739_741___05Fout = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout = VL_RAND_RESET_I(9);
    v__DOT__mul_649_649_650___05Fout = VL_RAND_RESET_I(16);
    v__DOT__mul_691_693_694___05Fout = VL_RAND_RESET_I(16);
    v__DOT__mul_715_715_716___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_752_753_754__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_754_755_756__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_756_757_758__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_758_759_760__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_760_761_762__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__smax_762_763_764__024max_mux___05Fout = VL_RAND_RESET_I(16);
    v__DOT__sub_686_688_689___05Fout = VL_RAND_RESET_I(16);
    v__DOT__sub_746_749_750___05Fout = VL_RAND_RESET_I(16);
    v__DOT__in_0_auto_reg__DOT__outReg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    { int __Vi0=0; for (; __Vi0<484; ++__Vi0) {
	    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<482; ++__Vi0) {
	    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    { int __Vi0=0; for (; __Vi0<482; ++__Vi0) {
	    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<486; ++__Vi0) {
	    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    { int __Vi0=0; for (; __Vi0<486; ++__Vi0) {
	    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = VL_RAND_RESET_I(9);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_1_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg = VL_RAND_RESET_I(16);
    v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg = VL_RAND_RESET_I(16);
    __Vclklast__TOP__clk = VL_RAND_RESET_I(1);
}

void VDesignTop::__Vconfigure(VDesignTop__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VDesignTop::~VDesignTop() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VDesignTop::eval() {
    VDesignTop__Syms* __restrict vlSymsp = this->__VlSymsp; // Setup global symbol table
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    VL_DEBUG_IF(VL_PRINTF("\n----TOP Evaluate VDesignTop::eval\n"); );
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	VL_DEBUG_IF(VL_PRINTF(" Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
    }
}

void VDesignTop::_eval_initial_loop(VDesignTop__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
    }
}

//--------------------
// Internal Methods

void VDesignTop::_initial__TOP__1(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_initial__TOP__1\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg = 0U;
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__2(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__2\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,0,0);
    VL_SIG8(__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,0,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0,15,0);
    VL_SIG16(__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,8,0);
    VL_SIG16(__Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0,15,0);
    //char	__VpadToAlign74[2];
    // Body
    __Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 0U;
    __Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 0U;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__sub_746_749_750___05Fout;

    cout << "vlTOPp->v__DOT__sub_746_749_750___05Fout = " << vlTOPp->v__DOT__sub_746_749_750___05Fout << endl;

    if ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1;

        cout << "Assigning to mem rdat" << endl;
        cout << "vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 = " << vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 << endl;
        
	__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata;
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata;
    if ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg;
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__mul_691_693_694___05Fout;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg;
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__mul_649_649_650___05Fout;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__mul_715_715_716___05Fout;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    if ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg;
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg;
    if ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYS at harris.v:28
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    if ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))) {
	__Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1;
	__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 = 1U;
	__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0 
	    = vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0;

        cout << "----- Memory updates" << endl;
        cout << "__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = " << __Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 << endl;
        cout << "__Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 = " << __Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data__v0 << endl;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data__v0;
    }
    // ALWAYSPOST at harris.v:30
    if (__Vdlyvset__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0) {
	vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data[__Vdlyvdim0__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0] 
	    = __Vdlyvval__v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data__v0;
    }
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg 
	= vlTOPp->v__DOT__sub_746_749_750___05Fout;
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout;
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg 
	= vlTOPp->v__DOT__mul_691_693_694___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout;
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg 
	= vlTOPp->v__DOT__mul_649_649_650___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg 
	= vlTOPp->v__DOT__mul_715_715_716___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout;
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout;
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata;
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg 
	= vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout;
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg 
	= vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout;
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    // ALWAYS at harris.v:77
    vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg = vlTOPp->in_0;
}

void VDesignTop::_initial__TOP__3(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_initial__TOP__3\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg = 0U;
    // INITIAL at harris.v:76
    vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg = 0U;
}

void VDesignTop::_settle__TOP__4(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__4\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e1U >= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e3U >= (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata 
	= ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata 
	= ((0x1e5U >= (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg))
	    ? vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data
	   [vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg]
	    : 0U);
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__add_644_646_647___05Fout = (0xffffU 
						& ((((((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata) 
						       - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg)) 
						      - 
						      ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg) 
						       << 1U)) 
						     + 
						     ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata) 
						      << 1U)) 
						    - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
						   + (IData)(vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg)));
    vlTOPp->v__DOT__sub_686_688_689___05Fout = (0xffffU 
						& ((((((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg) 
						       - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg)) 
						      + 
						      ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg) 
						       << 1U)) 
						     - 
						     ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg) 
						      << 1U)) 
						    + (IData)(vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg)) 
						   - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata)));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__5(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__5\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e2U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e4U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout 
	= (0x1ffU & ((0x1e6U == (0x1ffU & ((IData)(1U) 
					   + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))))
		      ? 0U : ((IData)(1U) + (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg))));
    vlTOPp->v__DOT__add_644_646_647___05Fout = (0xffffU 
						& ((((((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata) 
						       - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg)) 
						      - 
						      ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg) 
						       << 1U)) 
						     + 
						     ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata) 
						      << 1U)) 
						    - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
						   + (IData)(vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg)));
    vlTOPp->v__DOT__sub_686_688_689___05Fout = (0xffffU 
						& ((((((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg) 
						       - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg)) 
						      + 
						      ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg) 
						       << 1U)) 
						     - 
						     ((IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg) 
						      << 1U)) 
						    + (IData)(vlTOPp->v__DOT__in_0_auto_reg__DOT__outReg)) 
						   - (IData)(vlTOPp->v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata)));
    vlTOPp->v__DOT__mul_649_649_650___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__add_644_646_647___05Fout) 
						   * (IData)(vlTOPp->v__DOT__add_644_646_647___05Fout)));
    vlTOPp->v__DOT__mul_691_693_694___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__add_644_646_647___05Fout) 
						   * (IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout)));
    vlTOPp->v__DOT__mul_715_715_716___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout) 
						   * (IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout)));
}

void VDesignTop::_settle__TOP__6(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__6\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__mul_649_649_650___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__add_644_646_647___05Fout) 
						   * (IData)(vlTOPp->v__DOT__add_644_646_647___05Fout)));
    vlTOPp->v__DOT__mul_691_693_694___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__add_644_646_647___05Fout) 
						   * (IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout)));
    vlTOPp->v__DOT__mul_715_715_716___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout) 
						   * (IData)(vlTOPp->v__DOT__sub_686_688_689___05Fout)));
    vlTOPp->v__DOT__ashr_736_739_740___05Fout = (0xffffU 
						 & VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & (((((((((IData)(vlTOPp->v__DOT__mul_649_649_650___05Fout) 
									     + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
									    + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
									   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
									  + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
									 + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
									+ (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
								       + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
								      + (IData)(vlTOPp->v__DOT__mul_649_649_650___05Fout))), 7U));
    vlTOPp->v__DOT__add_695_712_713___05Fout = (0xffffU 
						& (((((((((IData)(vlTOPp->v__DOT__mul_691_693_694___05Fout) 
							  + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
							 + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
							+ (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
						       + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
						      + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
						     + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
						    + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
						   + (IData)(vlTOPp->v__DOT__mul_691_693_694___05Fout)));
    vlTOPp->v__DOT__ashr_737_739_741___05Fout = (0xffffU 
						 & VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & (((((((((IData)(vlTOPp->v__DOT__mul_715_715_716___05Fout) 
									     + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
									    + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
									   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
									  + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
									 + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
									+ (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
								       + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
								      + (IData)(vlTOPp->v__DOT__mul_715_715_716___05Fout))), 7U));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__7(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__7\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__ashr_736_739_740___05Fout = (0xffffU 
						 & VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & (((((((((IData)(vlTOPp->v__DOT__mul_649_649_650___05Fout) 
									     + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
									    + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
									   + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
									  + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
									 + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
									+ (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
								       + (IData)(vlTOPp->v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
								      + (IData)(vlTOPp->v__DOT__mul_649_649_650___05Fout))), 7U));

    
    vlTOPp->v__DOT__add_695_712_713___05Fout = (0xffffU 
						& (((((((((IData)(vlTOPp->v__DOT__mul_691_693_694___05Fout) 
							  + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
							 + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
							+ (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
						       + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
						      + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
						     + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
						    + (IData)(vlTOPp->v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
						   + (IData)(vlTOPp->v__DOT__mul_691_693_694___05Fout)));
    vlTOPp->v__DOT__ashr_737_739_741___05Fout = (0xffffU 
						 & VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & (((((((((IData)(vlTOPp->v__DOT__mul_715_715_716___05Fout) 
									     + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg)) 
									    + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata)) 
									   + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg)) 
									  + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg)) 
									 + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata)) 
									+ (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg)) 
								       + (IData)(vlTOPp->v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg)) 
								      + (IData)(vlTOPp->v__DOT__mul_715_715_716___05Fout))), 7U));
    vlTOPp->v__DOT__add_740_741_742___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__ashr_736_739_740___05Fout) 
						   + (IData)(vlTOPp->v__DOT__ashr_737_739_741___05Fout)));
}

void VDesignTop::_settle__TOP__8(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__8\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__add_740_741_742___05Fout = (0xffffU 
						& ((IData)(vlTOPp->v__DOT__ashr_736_739_740___05Fout) 
						   + (IData)(vlTOPp->v__DOT__ashr_737_739_741___05Fout)));
    vlTOPp->v__DOT__sub_746_749_750___05Fout = (0xffffU 
						& ((((IData)(vlTOPp->v__DOT__ashr_736_739_740___05Fout) 
						     * (IData)(vlTOPp->v__DOT__ashr_737_739_741___05Fout)) 
						    - 
						    ((0xffffU 
						      & VL_SHIFTRS_III(16,16,16, (IData)(vlTOPp->v__DOT__add_695_712_713___05Fout), 7U)) 
						     * 
						     (0xffffU 
						      & VL_SHIFTRS_III(16,16,16, (IData)(vlTOPp->v__DOT__add_695_712_713___05Fout), 7U)))) 
						   - 
						   VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & ((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
								      * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout))), 4U)));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__9(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__9\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body

    // vlTOPp->v__DOT__sub_746_749_750___05Fout
    // vlTOPp->v__DOT__ashr_736_739_740___05Fout
    // vlTOPp->v__DOT__ashr_737_739_741___05Fout
    // vlTOPp->v__DOT__add_695_712_713___05Fout
    // vlTOPp->v__DOT__add_695_712_713___05Fout
    // vlTOPp->v__DOT__add_740_741_742___05Fout
    // vlTOPp->v__DOT__add_740_741_742___05Fout

    cout << "vlTOPp->v__DOT__sub_746_749_750___05Fout " << (int) vlTOPp->v__DOT__sub_746_749_750___05Fout << endl;
    cout << (int) vlTOPp->v__DOT__ashr_736_739_740___05Fout << endl;
    cout << (int) vlTOPp->v__DOT__ashr_737_739_741___05Fout << endl;
    cout << (int) VL_SHIFTRS_III(16,16,16, (IData)(vlTOPp->v__DOT__add_695_712_713___05Fout), 7U) << endl;
    //cout << (int) vlTOPp->v__DOT__add_695_712_713___05Fout << endl;
    //cout << (int) vlTOPp->v__DOT__add_695_712_713___05Fout << endl;
    //cout << (int) vlTOPp->v__DOT__add_740_741_742___05Fout << endl;
    cout << (int) vlTOPp->v__DOT__add_740_741_742___05Fout << endl;

    cout << (int) ((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
                   * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout)) << endl;

    cout << bitset<16>((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
                       * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout)) << endl;

    cout << VL_SHIFTRS_III(16,16,16, 
                           (0xffffU 
                            & ((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
                               * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout))), 4U) << endl;

    cout << bitset<16>(VL_SHIFTRS_III(16,16,16, 
                                      (0xffffU 
                                       & ((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
                                          * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout))), 4U)) << endl;

    cout << "Done with sub inputs" << endl;
    
    vlTOPp->v__DOT__sub_746_749_750___05Fout = (0xffffU 
						& ((((IData)(vlTOPp->v__DOT__ashr_736_739_740___05Fout) 
						     * (IData)(vlTOPp->v__DOT__ashr_737_739_741___05Fout)) 
						    - 
						    ((0xffffU 
						      & VL_SHIFTRS_III(16,16,16, (IData)(vlTOPp->v__DOT__add_695_712_713___05Fout), 7U)) 
						     * 
						     (0xffffU 
						      & VL_SHIFTRS_III(16,16,16, (IData)(vlTOPp->v__DOT__add_695_712_713___05Fout), 7U)))) 
						   - 
						   VL_SHIFTRS_III(16,16,16, 
								  (0xffffU 
								   & ((IData)(vlTOPp->v__DOT__add_740_741_742___05Fout) 
								      * (IData)(vlTOPp->v__DOT__add_740_741_742___05Fout))), 4U)));

    cout << "vlTOPp->v__DOT__sub_746_749_750___05Fout after = " << (int) vlTOPp->v__DOT__sub_746_749_750___05Fout << endl;
    
    vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg));
}

void VDesignTop::_settle__TOP__10(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__10\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg));
    vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata))
	    ? (IData)(vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__11(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__11\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata))
	    ? (IData)(vlTOPp->v__DOT__smax_752_753_754__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata));
    vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg));
}

void VDesignTop::_settle__TOP__12(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__12\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_754_755_756__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg));
    vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata))
	    ? (IData)(vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__13(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__13\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata))
	    ? (IData)(vlTOPp->v__DOT__smax_756_757_758__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata));
    vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg));
}

void VDesignTop::_settle__TOP__14(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__14\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_758_759_760__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg));
    vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg));
}

VL_INLINE_OPT void VDesignTop::_sequent__TOP__15(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_sequent__TOP__15\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout 
	= (VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg))
	    ? (IData)(vlTOPp->v__DOT__smax_760_761_762__024max_mux___05Fout)
	    : (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg));
    vlTOPp->out = ((((VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout))
		       ? (IData)(vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout)
		       : (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout)) 
		     < (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg)) 
		    & (0x64U <= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg)))
		    ? 0U : 0xffU);
}

void VDesignTop::_settle__TOP__16(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_settle__TOP__16\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->out = ((((VL_GTES_III(1,16,16, (IData)(vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout), (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout))
		       ? (IData)(vlTOPp->v__DOT__smax_762_763_764__024max_mux___05Fout)
		       : (IData)(vlTOPp->v__DOT__sub_746_749_750___05Fout)) 
		     < (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg)) 
		    & (0x64U <= (IData)(vlTOPp->v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg)))
		    ? 0U : 0xffU);
}

void VDesignTop::_eval(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_eval\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk)))) {
	vlTOPp->_sequent__TOP__2(vlSymsp);
	vlTOPp->_sequent__TOP__5(vlSymsp);
	vlTOPp->_sequent__TOP__7(vlSymsp);
	vlTOPp->_sequent__TOP__9(vlSymsp);
	vlTOPp->_sequent__TOP__11(vlSymsp);
	vlTOPp->_sequent__TOP__13(vlSymsp);
	vlTOPp->_sequent__TOP__15(vlSymsp);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
}

void VDesignTop::_eval_initial(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_eval_initial\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->_initial__TOP__3(vlSymsp);
}

void VDesignTop::final() {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::final\n"); );
    // Variables
    VDesignTop__Syms* __restrict vlSymsp = this->__VlSymsp;
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VDesignTop::_eval_settle(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_eval_settle\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__4(vlSymsp);
    vlTOPp->_settle__TOP__6(vlSymsp);
    vlTOPp->_settle__TOP__8(vlSymsp);
    vlTOPp->_settle__TOP__10(vlSymsp);
    vlTOPp->_settle__TOP__12(vlSymsp);
    vlTOPp->_settle__TOP__14(vlSymsp);
    vlTOPp->_settle__TOP__16(vlSymsp);
}

VL_INLINE_OPT QData VDesignTop::_change_request(VDesignTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VDesignTop::_change_request\n"); );
    VDesignTop* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}
