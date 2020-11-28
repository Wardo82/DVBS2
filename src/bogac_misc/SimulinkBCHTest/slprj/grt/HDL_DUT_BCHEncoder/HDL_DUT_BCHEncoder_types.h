/*
 * HDL_DUT_BCHEncoder_types.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "HDL_DUT_BCHEncoder".
 *
 * Model version              : 1.4
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Sat Nov 28 19:52:45 2020
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ASIC/FPGA->ASIC/FPGA
 * Code generation objective: Execution efficiency
 * Validation result: Not run
 */

#ifndef RTW_HEADER_HDL_DUT_BCHEncoder_types_h_
#define RTW_HEADER_HDL_DUT_BCHEncoder_types_h_
#include "rtwtypes.h"
#include "multiword_types.h"

/* Model Code Variants */
#ifndef struct_tag_QQpXsFz38NUDPXk4lFSzsD
#define struct_tag_QQpXsFz38NUDPXk4lFSzsD

struct tag_QQpXsFz38NUDPXk4lFSzsD
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  real_T n;
  real_T k;
  boolean_T lfsr_generator[193];
};

#endif                                 /*struct_tag_QQpXsFz38NUDPXk4lFSzsD*/

#ifndef typedef_BCHEncoder_HDL_DUT_BCHEncoder_T
#define typedef_BCHEncoder_HDL_DUT_BCHEncoder_T

typedef struct tag_QQpXsFz38NUDPXk4lFSzsD BCHEncoder_HDL_DUT_BCHEncoder_T;

#endif                               /*typedef_BCHEncoder_HDL_DUT_BCHEncoder_T*/

/* Forward declaration for rtModel */
typedef struct tag_RTM_HDL_DUT_BCHEncoder_T RT_MODEL_HDL_DUT_BCHEncoder_T;

#endif                              /* RTW_HEADER_HDL_DUT_BCHEncoder_types_h_ */
