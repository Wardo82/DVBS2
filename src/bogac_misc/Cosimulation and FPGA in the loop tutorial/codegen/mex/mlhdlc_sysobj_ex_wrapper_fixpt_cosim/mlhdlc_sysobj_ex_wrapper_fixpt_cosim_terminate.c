/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate.c
 *
 * Code generation for function 'mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate'
 *
 */

/* Include files */
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate.h"
#include "_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex.h"
#include "mlhdlc_sysobj_ex_fixpt.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_data.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void mlhdlc_sysobj_ex_wrapper_fixpt_cosim_atexit(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  mlhdlc_sysobj_ex_fixpt_free();
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
  emlrtDestroyArray(&eml_mx);
  emlrtDestroyArray(&b_eml_mx);
  emlrtDestroyArray(&c_eml_mx);
  emlrtDestroyArray(&d_eml_mx);
  emlrtDestroyArray(&e_eml_mx);
  emlrtDestroyArray(&f_eml_mx);
}

void mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate.c) */
