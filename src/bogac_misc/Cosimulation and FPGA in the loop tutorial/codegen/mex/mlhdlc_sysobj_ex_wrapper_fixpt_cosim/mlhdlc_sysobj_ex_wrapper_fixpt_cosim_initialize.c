/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize.c
 *
 * Code generation for function 'mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize'
 *
 */

/* Include files */
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize.h"
#include "_coder_mlhdlc_sysobj_ex_wrapper_fixpt_cosim_mex.h"
#include "mlhdlc_sysobj_ex_fixpt.h"
#include "mlhdlc_sysobj_ex_wrapper_fixpt_cosim_data.h"
#include "rt_nonfinite.h"

/* Variable Definitions */
static const volatile char_T *emlrtBreakCheckR2012bFlagVar = NULL;
static emlrtMCInfo emlrtMCI = { -1,    /* lineNo */
  -1,                                  /* colNo */
  "",                                  /* fName */
  ""                                   /* pName */
};

/* Function Declarations */
static const mxArray *b_numerictype(const emlrtStack *sp, const char_T *b,
  boolean_T c, const char_T *d, const char_T *e, const char_T *f, real_T g,
  const char_T *h, real_T i, const char_T *j, real_T k, const char_T *l, real_T
  m, const char_T *n, real_T o, emlrtMCInfo *location);
static void c_mlhdlc_sysobj_ex_wrapper_fixp(const emlrtStack *sp);
static const mxArray *c_numerictype(const emlrtStack *sp, const char_T *b,
  real_T c, const char_T *d, real_T e, const char_T *f, real_T g, const char_T
  *h, real_T i, const char_T *j, real_T k, emlrtMCInfo *location);
static const mxArray *d_numerictype(const emlrtStack *sp, const char_T *b,
  real_T c, emlrtMCInfo *location);
static const mxArray *fimath(const emlrtStack *sp, const char_T *b, const char_T
  *c, const char_T *d, const char_T *e, const char_T *f, const char_T *g, const
  char_T *h, const char_T *i, const char_T *j, const char_T *k, const char_T *l,
  const char_T *m, const char_T *n, real_T o, const char_T *p, real_T q, const
  char_T *r, real_T s, const char_T *t, real_T u, const char_T *v, real_T w,
  const char_T *x, real_T y, const char_T *ab, real_T bb, const char_T *cb,
  real_T db, const char_T *eb, real_T fb, const char_T *gb, real_T hb, const
  char_T *ib, real_T jb, const char_T *kb, real_T lb, const char_T *mb,
  boolean_T nb, const char_T *ob, real_T pb, const char_T *qb, real_T rb,
  emlrtMCInfo *location);
static const mxArray *numerictype(const emlrtStack *sp, const char_T *b,
  boolean_T c, const char_T *d, const char_T *e, const char_T *f, real_T g,
  emlrtMCInfo *location);

/* Function Definitions */
static const mxArray *b_numerictype(const emlrtStack *sp, const char_T *b,
  boolean_T c, const char_T *d, const char_T *e, const char_T *f, real_T g,
  const char_T *h, real_T i, const char_T *j, real_T k, const char_T *l, real_T
  m, const char_T *n, real_T o, emlrtMCInfo *location)
{
  const mxArray *pArrays[14];
  const mxArray *b_m;
  pArrays[0] = emlrtCreateString(b);
  pArrays[1] = emlrtCreateLogicalScalar(c);
  pArrays[2] = emlrtCreateString(d);
  pArrays[3] = emlrtCreateString(e);
  pArrays[4] = emlrtCreateString(f);
  pArrays[5] = emlrtCreateDoubleScalar(g);
  pArrays[6] = emlrtCreateString(h);
  pArrays[7] = emlrtCreateDoubleScalar(i);
  pArrays[8] = emlrtCreateString(j);
  pArrays[9] = emlrtCreateDoubleScalar(k);
  pArrays[10] = emlrtCreateString(l);
  pArrays[11] = emlrtCreateDoubleScalar(m);
  pArrays[12] = emlrtCreateString(n);
  pArrays[13] = emlrtCreateDoubleScalar(o);
  return emlrtCallMATLABR2012b(sp, 1, &b_m, 14, pArrays, "numerictype", true,
    location);
}

static void c_mlhdlc_sysobj_ex_wrapper_fixp(const emlrtStack *sp)
{
  mex_InitInfAndNan();
  emlrtAssignP(&f_eml_mx, NULL);
  emlrtAssignP(&e_eml_mx, NULL);
  emlrtAssignP(&d_eml_mx, NULL);
  emlrtAssignP(&c_eml_mx, NULL);
  emlrtAssignP(&b_eml_mx, NULL);
  emlrtAssignP(&eml_mx, NULL);
  emlrtAssignP(&f_eml_mx, numerictype(sp, "SignednessBool", false, "Signedness",
    "Unsigned", "WordLength", 14.0, &emlrtMCI));
  emlrtAssignP(&e_eml_mx, b_numerictype(sp, "SignednessBool", false,
    "Signedness", "Unsigned", "WordLength", 14.0, "FractionLength", 16.0,
    "BinaryPoint", 16.0, "Slope", 1.52587890625E-5, "FixedExponent", -16.0,
    &emlrtMCI));
  emlrtAssignP(&d_eml_mx, c_numerictype(sp, "WordLength", 14.0, "FractionLength",
    16.0, "BinaryPoint", 16.0, "Slope", 1.52587890625E-5, "FixedExponent", -16.0,
    &emlrtMCI));
  emlrtAssignP(&c_eml_mx, d_numerictype(sp, "WordLength", 14.0, &emlrtMCI));
  emlrtAssignP(&b_eml_mx, c_numerictype(sp, "WordLength", 14.0, "FractionLength",
    12.0, "BinaryPoint", 12.0, "Slope", 0.000244140625, "FixedExponent", -12.0,
    &emlrtMCI));
  emlrtAssignP(&eml_mx, fimath(sp, "RoundMode", "floor", "RoundingMethod",
    "Floor", "OverflowMode", "wrap", "OverflowAction", "Wrap", "ProductMode",
    "FullPrecision", "SumMode", "FullPrecision", "ProductWordLength", 32.0,
    "SumWordLength", 32.0, "MaxProductWordLength", 128.0, "MaxSumWordLength",
    128.0, "ProductFractionLength", 30.0, "ProductFixedExponent", -30.0,
    "SumFractionLength", 30.0, "SumFixedExponent", -30.0,
    "SumSlopeAdjustmentFactor", 1.0, "SumBias", 0.0,
    "ProductSlopeAdjustmentFactor", 1.0, "ProductBias", 0.0, "CastBeforeSum",
    true, "SumSlope", 9.3132257461547852E-10, "ProductSlope",
    9.3132257461547852E-10, &emlrtMCI));
  mlhdlc_sysobj_ex_fixpt_init();
}

static const mxArray *c_numerictype(const emlrtStack *sp, const char_T *b,
  real_T c, const char_T *d, real_T e, const char_T *f, real_T g, const char_T
  *h, real_T i, const char_T *j, real_T k, emlrtMCInfo *location)
{
  const mxArray *pArrays[10];
  const mxArray *m;
  pArrays[0] = emlrtCreateString(b);
  pArrays[1] = emlrtCreateDoubleScalar(c);
  pArrays[2] = emlrtCreateString(d);
  pArrays[3] = emlrtCreateDoubleScalar(e);
  pArrays[4] = emlrtCreateString(f);
  pArrays[5] = emlrtCreateDoubleScalar(g);
  pArrays[6] = emlrtCreateString(h);
  pArrays[7] = emlrtCreateDoubleScalar(i);
  pArrays[8] = emlrtCreateString(j);
  pArrays[9] = emlrtCreateDoubleScalar(k);
  return emlrtCallMATLABR2012b(sp, 1, &m, 10, pArrays, "numerictype", true,
    location);
}

static const mxArray *d_numerictype(const emlrtStack *sp, const char_T *b,
  real_T c, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  const mxArray *m;
  pArrays[0] = emlrtCreateString(b);
  pArrays[1] = emlrtCreateDoubleScalar(c);
  return emlrtCallMATLABR2012b(sp, 1, &m, 2, pArrays, "numerictype", true,
    location);
}

static const mxArray *fimath(const emlrtStack *sp, const char_T *b, const char_T
  *c, const char_T *d, const char_T *e, const char_T *f, const char_T *g, const
  char_T *h, const char_T *i, const char_T *j, const char_T *k, const char_T *l,
  const char_T *m, const char_T *n, real_T o, const char_T *p, real_T q, const
  char_T *r, real_T s, const char_T *t, real_T u, const char_T *v, real_T w,
  const char_T *x, real_T y, const char_T *ab, real_T bb, const char_T *cb,
  real_T db, const char_T *eb, real_T fb, const char_T *gb, real_T hb, const
  char_T *ib, real_T jb, const char_T *kb, real_T lb, const char_T *mb,
  boolean_T nb, const char_T *ob, real_T pb, const char_T *qb, real_T rb,
  emlrtMCInfo *location)
{
  const mxArray *pArrays[42];
  const mxArray *b_m;
  pArrays[0] = emlrtCreateString(b);
  pArrays[1] = emlrtCreateString(c);
  pArrays[2] = emlrtCreateString(d);
  pArrays[3] = emlrtCreateString(e);
  pArrays[4] = emlrtCreateString(f);
  pArrays[5] = emlrtCreateString(g);
  pArrays[6] = emlrtCreateString(h);
  pArrays[7] = emlrtCreateString(i);
  pArrays[8] = emlrtCreateString(j);
  pArrays[9] = emlrtCreateString(k);
  pArrays[10] = emlrtCreateString(l);
  pArrays[11] = emlrtCreateString(m);
  pArrays[12] = emlrtCreateString(n);
  pArrays[13] = emlrtCreateDoubleScalar(o);
  pArrays[14] = emlrtCreateString(p);
  pArrays[15] = emlrtCreateDoubleScalar(q);
  pArrays[16] = emlrtCreateString(r);
  pArrays[17] = emlrtCreateDoubleScalar(s);
  pArrays[18] = emlrtCreateString(t);
  pArrays[19] = emlrtCreateDoubleScalar(u);
  pArrays[20] = emlrtCreateString(v);
  pArrays[21] = emlrtCreateDoubleScalar(w);
  pArrays[22] = emlrtCreateString(x);
  pArrays[23] = emlrtCreateDoubleScalar(y);
  pArrays[24] = emlrtCreateString(ab);
  pArrays[25] = emlrtCreateDoubleScalar(bb);
  pArrays[26] = emlrtCreateString(cb);
  pArrays[27] = emlrtCreateDoubleScalar(db);
  pArrays[28] = emlrtCreateString(eb);
  pArrays[29] = emlrtCreateDoubleScalar(fb);
  pArrays[30] = emlrtCreateString(gb);
  pArrays[31] = emlrtCreateDoubleScalar(hb);
  pArrays[32] = emlrtCreateString(ib);
  pArrays[33] = emlrtCreateDoubleScalar(jb);
  pArrays[34] = emlrtCreateString(kb);
  pArrays[35] = emlrtCreateDoubleScalar(lb);
  pArrays[36] = emlrtCreateString(mb);
  pArrays[37] = emlrtCreateLogicalScalar(nb);
  pArrays[38] = emlrtCreateString(ob);
  pArrays[39] = emlrtCreateDoubleScalar(pb);
  pArrays[40] = emlrtCreateString(qb);
  pArrays[41] = emlrtCreateDoubleScalar(rb);
  return emlrtCallMATLABR2012b(sp, 1, &b_m, 42, pArrays, "fimath", true,
    location);
}

static const mxArray *numerictype(const emlrtStack *sp, const char_T *b,
  boolean_T c, const char_T *d, const char_T *e, const char_T *f, real_T g,
  emlrtMCInfo *location)
{
  const mxArray *pArrays[6];
  const mxArray *m;
  pArrays[0] = emlrtCreateString(b);
  pArrays[1] = emlrtCreateLogicalScalar(c);
  pArrays[2] = emlrtCreateString(d);
  pArrays[3] = emlrtCreateString(e);
  pArrays[4] = emlrtCreateString(f);
  pArrays[5] = emlrtCreateDoubleScalar(g);
  return emlrtCallMATLABR2012b(sp, 1, &m, 6, pArrays, "numerictype", true,
    location);
}

void mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 3U, "ForceOff");
  emlrtEnterRtStackR2012b(&st);
  emlrtLicenseCheckR2012b(&st, "fixed_point_toolbox", 2);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    c_mlhdlc_sysobj_ex_wrapper_fixp(&st);
  }
}

/* End of code generation (mlhdlc_sysobj_ex_wrapper_fixpt_cosim_initialize.c) */
