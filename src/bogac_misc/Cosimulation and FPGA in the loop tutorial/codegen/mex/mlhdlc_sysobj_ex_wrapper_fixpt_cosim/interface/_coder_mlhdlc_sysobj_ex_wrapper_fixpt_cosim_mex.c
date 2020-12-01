/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex.c
 *
 * Code generation for function '_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex'
 *
 */

/* Include files */
#include "_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex.h"
#include "_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_api.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_data.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(&mlhdlc_sysobj_ex_wrapper_fixpt_cosim_atexit);

  /* Module initialization. */
  mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize();

  /* Dispatch the entry-point. */
  mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mexFunction(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  mlhdlc_sysobj_ex_wrapper_fixpt_cosim_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

void mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mexFunction(int32_T nlhs, mxArray
  *plhs[2], int32_T nrhs, const mxArray *prhs[5])
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  const mxArray *outputs[2];
  int32_T b_nlhs;
  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 5) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 5, 4,
                        36, "mlhdlc_sysobj_ex_wrapper_fixpt_cosim");
  }

  if (nlhs > 2) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 36,
                        "mlhdlc_sysobj_ex_wrapper_fixpt_cosim");
  }

  /* Call the function. */
  d_mlhdlc_sysobj_ex_wrapper_fixp(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);
}

/* End of code generation (_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex.c) */
