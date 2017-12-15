// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VDesignTop_H_
#define _VDesignTop_H_

#include "verilated.h"
class VDesignTop__Syms;

//----------

VL_MODULE(VDesignTop) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    //char	__VpadToAlign1[1];
    VL_IN16(in_0,15,0);
    VL_OUT16(out,15,0);
    //char	__VpadToAlign6[2];
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG16(v__DOT__add_644_646_647___05Fout,15,0);
    VL_SIG16(v__DOT__add_695_712_713___05Fout,15,0);
    VL_SIG16(v__DOT__add_740_741_742___05Fout,15,0);
    VL_SIG16(v__DOT__ashr_736_739_740___05Fout,15,0);
    VL_SIG16(v__DOT__ashr_737_739_741___05Fout,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem___05Frdata,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024enMux___05Fout,8,0);
    VL_SIG16(v__DOT__mul_649_649_650___05Fout,15,0);
    VL_SIG16(v__DOT__mul_691_693_694___05Fout,15,0);
    VL_SIG16(v__DOT__mul_715_715_716___05Fout,15,0);
    VL_SIG16(v__DOT__smax_752_753_754__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__smax_754_755_756__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__smax_756_757_758__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__smax_758_759_760__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__smax_760_761_762__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__smax_762_763_764__024max_mux___05Fout,15,0);
    VL_SIG16(v__DOT__sub_686_688_689___05Fout,15,0);
    VL_SIG16(v__DOT__sub_746_749_750___05Fout,15,0);
    VL_SIG16(v__DOT__in_0_auto_reg__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_0_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_1_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024reg_2_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_0_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_1_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024reg_2_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_0_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_1_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024reg_2_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024reg_0_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024reg_1_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024reg_2_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024raddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024waddr__024reg0__DOT__outReg,8,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_0_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_0_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_1_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_1_2__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_2_1__DOT__outReg,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024reg_2_2__DOT__outReg,15,0);
    //char	__VpadToAlign198[2];
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT__data[484],15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT__data[482],15,0);
    //char	__VpadToAlign6972[4];
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT__data[482],15,0);
    //char	__VpadToAlign7940[4];
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT__data[486],15,0);
    //char	__VpadToAlign8916[4];
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT__data[486],15,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(__Vclklast__TOP__clk,0,0);
    //char	__VpadToAlign9897[1];
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_grad_xx_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_grad_xy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_grad_yy_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_p3_cim_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_1__024mem__DOT____Vlvbound1,15,0);
    VL_SIG16(v__DOT__lb_padded_2_stencil_update_stream__024mem_2__024mem__DOT____Vlvbound1,15,0);
    //char	__VpadToAlign9918[2];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    //char	__VpadToAlign9924[4];
    VDesignTop__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VDesignTop& operator= (const VDesignTop&);	///< Copying not allowed
    VDesignTop(const VDesignTop&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    VDesignTop(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VDesignTop();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VDesignTop__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VDesignTop__Syms* symsp, bool first);
  private:
    static QData	_change_request(VDesignTop__Syms* __restrict vlSymsp);
  public:
    static void	_eval(VDesignTop__Syms* __restrict vlSymsp);
    static void	_eval_initial(VDesignTop__Syms* __restrict vlSymsp);
    static void	_eval_settle(VDesignTop__Syms* __restrict vlSymsp);
    static void	_initial__TOP__1(VDesignTop__Syms* __restrict vlSymsp);
    static void	_initial__TOP__3(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__11(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__13(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__15(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__2(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__5(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__7(VDesignTop__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__9(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__10(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__12(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__14(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__16(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__4(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__6(VDesignTop__Syms* __restrict vlSymsp);
    static void	_settle__TOP__8(VDesignTop__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
