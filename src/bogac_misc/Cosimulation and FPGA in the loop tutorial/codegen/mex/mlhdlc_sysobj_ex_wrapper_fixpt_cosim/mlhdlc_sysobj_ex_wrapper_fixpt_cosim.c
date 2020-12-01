/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mlhdlc_sysobj_ex_wrapper_fixpt_cosim.c
 *
 * Code generation for function 'mlhdlc_sysobj_ex_wrapper_fixpt_cosim'
 *
 */

/* Include files */
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim.h"
#include "mlhdlc_sysobj_ex_fixpt.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_data.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 13,    /* lineNo */
  "mlhdlc_sysobj_ex_wrapper_fixpt_cosim",/* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_wrapper_fixpt_cosim.m"             /* pathName */
};

static emlrtRSInfo b_emlrtRSI = { 21,  /* lineNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pathName */
};

static emlrtMCInfo b_emlrtMCI = { 24,  /* lineNo */
  1,                                   /* colNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pName */
};

static emlrtMCInfo c_emlrtMCI = { 27,  /* lineNo */
  1,                                   /* colNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pName */
};

static emlrtMCInfo d_emlrtMCI = { 28,  /* lineNo */
  1,                                   /* colNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pName */
};

static emlrtMCInfo e_emlrtMCI = { 31,  /* lineNo */
  1,                                   /* colNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pName */
};

static emlrtRSInfo t_emlrtRSI = { 24,  /* lineNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pathName */
};

static emlrtRSInfo u_emlrtRSI = { 28,  /* lineNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pathName */
};

static emlrtRSInfo v_emlrtRSI = { 27,  /* lineNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pathName */
};

static emlrtRSInfo w_emlrtRSI = { 31,  /* lineNo */
  "mlhdlc_sysobj_ex_fixpt_cosim",      /* fcnName */
  "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/cosim/mlhdlc_sysobj_ex"
  "_fixpt_cosim.m"                     /* pathName */
};

/* Function Declarations */
static void c_mlhdlc_sysobj_ex_fixpt_sysobj(const emlrtStack *sp, const mxArray *
  b, const mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f,
  emlrtMCInfo *location, const mxArray **g, const mxArray **h);
static void hdlverifier_assert(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location);
static void localLogData(const emlrtStack *sp, const mxArray *b, const mxArray
  *c, const mxArray *d, const mxArray *e, emlrtMCInfo *location);

/* Function Definitions */
static void c_mlhdlc_sysobj_ex_fixpt_sysobj(const emlrtStack *sp, const mxArray *
  b, const mxArray *c, const mxArray *d, const mxArray *e, const mxArray *f,
  emlrtMCInfo *location, const mxArray **g, const mxArray **h)
{
  const mxArray *pArrays[5];
  const mxArray *mv[2];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  pArrays[3] = e;
  pArrays[4] = f;
  emlrtAssign(g, emlrtCallMATLABR2012b(sp, 2, &mv[0], 5, pArrays,
    "mlhdlc_sysobj_ex_fixpt_sysobj_cosim", true, location));
  emlrtAssign(h, mv[1]);
}

static void hdlverifier_assert(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, const mxArray *d, emlrtMCInfo *location)
{
  const mxArray *pArrays[3];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  emlrtCallMATLABR2012b(sp, 0, NULL, 3, pArrays, "hdlverifier.assert", true,
                        location);
}

static void localLogData(const emlrtStack *sp, const mxArray *b, const mxArray
  *c, const mxArray *d, const mxArray *e, emlrtMCInfo *location)
{
  const mxArray *pArrays[4];
  pArrays[0] = b;
  pArrays[1] = c;
  pArrays[2] = d;
  pArrays[3] = e;
  emlrtCallMATLABR2012b(sp, 0, NULL, 4, pArrays, "localLogData", true, location);
}

void mlhdlc_sysobj_ex_wrapper_fixpt_cosim(const emlrtStack *sp, real_T x_in,
  real_T h_in1, real_T h_in2, real_T h_in3, real_T h_in4, real_T *y_out, real_T *
  delayed_xout)
{
  static const int32_T iv[2] = { 1, 5 };

  static const int32_T iv1[2] = { 1, 12 };

  static const char_T b_u[12] = { 'd', 'e', 'l', 'a', 'y', 'e', 'd', '_', 'x',
    'o', 'u', 't' };

  static const char_T u[5] = { 'y', '_', 'o', 'u', 't' };

  emlrtStack b_st;
  emlrtStack st;
  const mxArray *b_delayed_xout;
  const mxArray *b_y;
  const mxArray *b_y_out;
  const mxArray *c_y;
  const mxArray *d_y;
  const mxArray *e_y;
  const mxArray *f_y;
  const mxArray *g_y;
  const mxArray *h_y;
  const mxArray *i_y;
  const mxArray *j_y;
  const mxArray *k_y;
  const mxArray *l_y;
  const mxArray *m;
  const mxArray *m_y;
  const mxArray *n_y;
  const mxArray *o_y;
  const mxArray *p_y;
  const mxArray *q_y;
  const mxArray *r_y;
  const mxArray *s_y;
  const mxArray *t_y;
  const mxArray *y;
  real_T d;
  int16_T b_h_in1;
  int16_T b_h_in2;
  int16_T b_x_in;
  int16_T ref_delayed_xout;
  int16_T ref_y_out;
  uint16_T b_h_in3;
  uint16_T b_h_in4;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;

  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  /*                                                                           % */
  /*            Generated by MATLAB 9.9 and Fixed-Point Designer 7.1           % */
  /*                                                                           % */
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  d = muDoubleScalarFloor(x_in * 4096.0);
  if (muDoubleScalarIsNaN(d) || muDoubleScalarIsInf(d)) {
    d = 0.0;
  } else {
    d = muDoubleScalarRem(d, 16384.0);
  }

  if (((int16_T)d & 8192) != 0) {
    b_x_in = (int16_T)((int16_T)d | -8192);
  } else {
    b_x_in = (int16_T)((int16_T)d & 8191);
  }

  d = muDoubleScalarFloor(h_in1 * 32768.0);
  if (muDoubleScalarIsNaN(d) || muDoubleScalarIsInf(d)) {
    d = 0.0;
  } else {
    d = muDoubleScalarRem(d, 16384.0);
  }

  if (((int16_T)d & 8192) != 0) {
    b_h_in1 = (int16_T)((int16_T)d | -8192);
  } else {
    b_h_in1 = (int16_T)((int16_T)d & 8191);
  }

  d = muDoubleScalarFloor(h_in2 * 65536.0);
  if (muDoubleScalarIsNaN(d) || muDoubleScalarIsInf(d)) {
    d = 0.0;
  } else {
    d = muDoubleScalarRem(d, 16384.0);
  }

  if (((int16_T)d & 8192) != 0) {
    b_h_in2 = (int16_T)((int16_T)d | -8192);
  } else {
    b_h_in2 = (int16_T)((int16_T)d & 8191);
  }

  d = muDoubleScalarFloor(h_in3 * 65536.0);
  if (muDoubleScalarIsNaN(d) || muDoubleScalarIsInf(d)) {
    d = 0.0;
  } else {
    d = muDoubleScalarRem(d, 16384.0);
  }

  b_h_in3 = (uint16_T)((uint16_T)(int16_T)d & 16383);
  d = muDoubleScalarFloor(h_in4 * 32768.0);
  if (muDoubleScalarIsNaN(d) || muDoubleScalarIsInf(d)) {
    d = 0.0;
  } else {
    d = muDoubleScalarRem(d, 16384.0);
  }

  b_h_in4 = (uint16_T)((uint16_T)(int16_T)d & 16383);
  st.site = &emlrtRSI;
  b_y_out = NULL;
  b_delayed_xout = NULL;

  /*  Auto generated function to simulate the generated HDL code using cosimulation */
  /*   */
  /*  Generated by MATLAB 9.9 and HDL Coder 3.17 */
  /*  Declare persistent variables */
  /*  Initialize persistent variables */
  /*  Call the original MATLAB function to get reference signal */
  b_st.site = &b_emlrtRSI;
  mlhdlc_sysobj_ex_fixpt(&b_st, b_x_in, b_h_in1, b_h_in2, b_h_in3, b_h_in4,
    &ref_y_out, &ref_delayed_xout);

  /*  Run cosimulation */
  y = NULL;
  b_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = b_x_in;
  emlrtAssign(&b_y, m);
  emlrtAssign(&y, emlrtCreateFIR2013b(&st, eml_mx, b_eml_mx, "simulinkarray",
    b_y, true, false));
  c_y = NULL;
  d_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = b_h_in1;
  emlrtAssign(&d_y, m);
  emlrtAssign(&c_y, emlrtCreateFIR2013b(&st, eml_mx, c_eml_mx, "simulinkarray",
    d_y, true, false));
  e_y = NULL;
  f_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = b_h_in2;
  emlrtAssign(&f_y, m);
  emlrtAssign(&e_y, emlrtCreateFIR2013b(&st, eml_mx, d_eml_mx, "simulinkarray",
    f_y, true, false));
  g_y = NULL;
  h_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxUINT16_CLASS, mxREAL);
  *(uint16_T *)emlrtMxGetData(m) = b_h_in3;
  emlrtAssign(&h_y, m);
  emlrtAssign(&g_y, emlrtCreateFIR2013b(&st, eml_mx, e_eml_mx, "simulinkarray",
    h_y, true, false));
  i_y = NULL;
  j_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxUINT16_CLASS, mxREAL);
  *(uint16_T *)emlrtMxGetData(m) = b_h_in4;
  emlrtAssign(&j_y, m);
  emlrtAssign(&i_y, emlrtCreateFIR2013b(&st, eml_mx, f_eml_mx, "simulinkarray",
    j_y, true, false));
  b_st.site = &t_emlrtRSI;
  c_mlhdlc_sysobj_ex_fixpt_sysobj(&b_st, y, c_y, e_y, g_y, i_y, &b_emlrtMCI,
    &b_y_out, &b_delayed_xout);

  /*  Verify the cosimulation output */
  k_y = NULL;
  l_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = ref_y_out;
  emlrtAssign(&l_y, m);
  emlrtAssign(&k_y, emlrtCreateFIR2013b(&st, eml_mx, b_eml_mx, "simulinkarray",
    l_y, true, false));
  m_y = NULL;
  m = emlrtCreateCharArray(2, &iv[0]);
  emlrtInitCharArrayR2013a(&st, 5, m, &u[0]);
  emlrtAssign(&m_y, m);
  b_st.site = &v_emlrtRSI;
  hdlverifier_assert(&b_st, emlrtAlias(b_y_out), k_y, m_y, &c_emlrtMCI);
  n_y = NULL;
  o_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = ref_delayed_xout;
  emlrtAssign(&o_y, m);
  emlrtAssign(&n_y, emlrtCreateFIR2013b(&st, eml_mx, b_eml_mx, "simulinkarray",
    o_y, true, false));
  p_y = NULL;
  m = emlrtCreateCharArray(2, &iv1[0]);
  emlrtInitCharArrayR2013a(&st, 12, m, &b_u[0]);
  emlrtAssign(&p_y, m);
  b_st.site = &u_emlrtRSI;
  hdlverifier_assert(&b_st, emlrtAlias(b_delayed_xout), n_y, p_y, &d_emlrtMCI);
  q_y = NULL;
  r_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = ref_y_out;
  emlrtAssign(&r_y, m);
  emlrtAssign(&q_y, emlrtCreateFIR2013b(&st, eml_mx, b_eml_mx, "simulinkarray",
    r_y, true, false));
  s_y = NULL;
  t_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = ref_delayed_xout;
  emlrtAssign(&t_y, m);
  emlrtAssign(&s_y, emlrtCreateFIR2013b(&st, eml_mx, b_eml_mx, "simulinkarray",
    t_y, true, false));
  b_st.site = &w_emlrtRSI;
  localLogData(&b_st, emlrtAlias(b_y_out), emlrtAlias(b_delayed_xout), q_y, s_y,
               &e_emlrtMCI);
  emlrtDestroyArray(&b_y_out);
  emlrtDestroyArray(&b_delayed_xout);
  *y_out = (real_T)ref_y_out * 0.000244140625;
  *delayed_xout = (real_T)ref_delayed_xout * 0.000244140625;
}

/* End of code generation (mlhdlc_sysobj_ex_wrapper_fixpt_cosim.c) */
