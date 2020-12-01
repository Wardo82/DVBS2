/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mlhdlc_sysobj_ex_fixpt.h
 *
 * Code generation for function 'mlhdlc_sysobj_ex_fixpt'
 *
 */

#pragma once

/* Include files */
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function Declarations */
void mlhdlc_sysobj_ex_fixpt(const emlrtStack *sp, int16_T x_in, int16_T h_in1,
  int16_T h_in2, uint16_T h_in3, uint16_T h_in4, int16_T *y_out, int16_T
  *delayed_xout);
void mlhdlc_sysobj_ex_fixpt_free(void);
void mlhdlc_sysobj_ex_fixpt_init(void);

/* End of code generation (mlhdlc_sysobj_ex_fixpt.h) */
