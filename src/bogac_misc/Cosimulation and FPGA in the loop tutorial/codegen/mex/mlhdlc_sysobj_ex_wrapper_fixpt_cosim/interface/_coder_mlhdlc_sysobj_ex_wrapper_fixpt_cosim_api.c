/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_api.c
 *
 * Code generation for function '_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_api'
 *
 */

/* Include files */
#include "_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_api.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_data.h"
#include "rt_nonfinite.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static real_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);
static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *x_in, const
  char_T *identifier);
static const mxArray *emlrt_marshallOut(const real_T u);

/* Function Definitions */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId)
{
  static const int32_T dims = 0;
  real_T ret;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, &dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *x_in, const
  char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  real_T y;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(x_in), &thisId);
  emlrtDestroyArray(&x_in);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u)
{
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  m = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m);
  return y;
}

void d_mlhdlc_sysobj_ex_wrapper_fixp(const mxArray * const prhs[5], int32_T nlhs,
  const mxArray *plhs[2])
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  real_T delayed_xout;
  real_T h_in1;
  real_T h_in2;
  real_T h_in3;
  real_T h_in4;
  real_T x_in;
  real_T y_out;
  st.tls = emlrtRootTLSGlobal;

  /* Marshall function inputs */
  x_in = emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "x_in");
  h_in1 = emlrt_marshallIn(&st, emlrtAliasP(prhs[1]), "h_in1");
  h_in2 = emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "h_in2");
  h_in3 = emlrt_marshallIn(&st, emlrtAliasP(prhs[3]), "h_in3");
  h_in4 = emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "h_in4");

  /* Invoke the target function */
  mlhdlc_sysobj_ex_wrapper_fixpt_cosim(&st, x_in, h_in1, h_in2, h_in3, h_in4,
    &y_out, &delayed_xout);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(y_out);
  if (nlhs > 1) {
    plhs[1] = emlrt_marshallOut(delayed_xout);
  }
}

/* End of code generation (_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_api.c) */
