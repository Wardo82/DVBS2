/*
 * Code generation for system model 'HDL_DUT_BCHEncoder'
 *
 * Model                      : HDL_DUT_BCHEncoder
 * Model version              : 1.4
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Sat Nov 28 19:52:45 2020
 *
 * Note that the functions contained in this file are part of a Simulink
 * model, and are not self-contained algorithms.
 */

#include "HDL_DUT_BCHEncoder.h"
#include "HDL_DUT_BCHEncoder_private.h"

/* Forward declaration for local functions */
static void HDL_DUT_BCH_BCHEncoder_stepImpl(const
  BCHEncoder_HDL_DUT_BCHEncoder_T *obj, const boolean_T message[48408],
  boolean_T codeword[48600], B_HDL_DUT_BCHEncoder_c_T *localB);
static void HDL_DUT_BCH_BCHEncoder_stepImpl(const
  BCHEncoder_HDL_DUT_BCHEncoder_T *obj, const boolean_T message[48408],
  boolean_T codeword[48600], B_HDL_DUT_BCHEncoder_c_T *localB)
{
  real_T g;
  real_T s;
  int32_T b;
  int32_T b_i;
  int32_T b_s;
  boolean_T parity_bits[192];
  boolean_T out;

  /*  1.- Multiply the message polynomial m(x) by x^(n−k) . */
  memcpy(&localB->lfsr_message[0], &message[0], 48408U * sizeof(boolean_T));

  /*  Parity bit column vector */
  memset(&localB->lfsr_message[48408], 0, 192U * sizeof(boolean_T));
  memset(&parity_bits[0], 0, 192U * sizeof(boolean_T));
  g = obj->n - obj->k;
  b = (int32_T)(((-1.0 - g) + 2.0) / -1.0) - 1;
  for (b_i = 0; b_i < 48600; b_i++) {
    /*  Number of registers */
    /*  Compute the output of the LFSR, the last bit of the registers. */
    out = parity_bits[(int32_T)g - 1];

    /*  Update the states in the LFSR */
    for (b_s = 0; b_s <= b; b_s++) {
      s = g + -(real_T)b_s;

      /*  Compute "and" flag */
      /*  Each state will be the result of: */
      /*  state(s-1) xor generator_polinomial coefficient */
      parity_bits[(int32_T)s - 1] = ((int32_T)parity_bits[(int32_T)(s - 1.0) - 1]
        != (out && obj->lfsr_generator[(int32_T)s - 1]));
    }

    /*  First register is: input xor generator(1) */
    parity_bits[0] = ((out && obj->lfsr_generator[0]) != (int32_T)
                      localB->lfsr_message[b_i]);
  }

  for (b_i = 0; b_i < 96; b_i++) {
    out = parity_bits[b_i];
    parity_bits[b_i] = parity_bits[191 - b_i];
    parity_bits[191 - b_i] = out;
  }

  memcpy(&codeword[0], &message[0], 48408U * sizeof(boolean_T));
  memcpy(&codeword[48408], &parity_bits[0], 192U * sizeof(boolean_T));
}

/* System initialize for referenced model: 'HDL_DUT_BCHEncoder' */
void HDL_DUT_BCHEncoder_Init(DW_HDL_DUT_BCHEncoder_f_T *localDW)
{
  /* Start for MATLABSystem: '<S1>/MATLAB Systemd' */
  localDW->obj.n = 48600.0;
  localDW->obj.k = 48408.0;
  localDW->obj.isInitialized = 0;
  localDW->obj.matlabCodegenIsDeleted = false;
  localDW->objisempty = true;
  memcpy(&localDW->obj.lfsr_generator[0], &rtCP_MATLABSystemd_lfsr_generat[0],
         193U * sizeof(boolean_T));
  localDW->obj.isInitialized = 1;

  /*  Class definition for a BCHEncoder that is going to be used to create a  */
  /*  simulink block. */
  /*  Inheriting from matlab.System is enables us to include this code in a  */
  /*  simulink block. */
  /*  Property section for logical values that can be only true or false. */
  /*  Nontunable means that it cannot change while the model is running. */
  /*  Hidden properties that won't be shown either in matlab nor in  */
  /*  simulink. */
  /*  Codeword length */
  /*  Length of input message */
  /*  The generator polynomial in ascending order */
  localDW->obj.isSetupComplete = true;
}

/* Output and update for referenced model: 'HDL_DUT_BCHEncoder' */
void HDL_DUT_BCHEncoder(boolean_T rty_out1[48600], B_HDL_DUT_BCHEncoder_c_T
  *localB, DW_HDL_DUT_BCHEncoder_f_T *localDW)
{
  int32_T b_k;
  boolean_T exitg1;
  boolean_T p;
  boolean_T p_0;

  /* MATLABSystem: '<S1>/MATLAB Systemd' incorporates:
   *  Constant: '<Root>/Constant'
   */
  p = false;
  p_0 = true;
  b_k = 0;
  exitg1 = false;
  while ((!exitg1) && (b_k < 193)) {
    if (localDW->obj.lfsr_generator[b_k] != rtCP_MATLABSystemd_lfsr_generat[b_k])
    {
      p_0 = false;
      exitg1 = true;
    } else {
      b_k++;
    }
  }

  if (p_0) {
    p = true;
  }

  if (!p) {
    memcpy(&localDW->obj.lfsr_generator[0], &rtCP_MATLABSystemd_lfsr_generat[0],
           193U * sizeof(boolean_T));
  }

  HDL_DUT_BCH_BCHEncoder_stepImpl(&localDW->obj, rtCP_Constant_Value, rty_out1,
    localB);

  /* End of MATLABSystem: '<S1>/MATLAB Systemd' */
}

/* Termination for referenced model: 'HDL_DUT_BCHEncoder' */
void HDL_DUT_BCHEncoder_Term(DW_HDL_DUT_BCHEncoder_f_T *localDW)
{
  /* Terminate for MATLABSystem: '<S1>/MATLAB Systemd' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S1>/MATLAB Systemd' */
}

/* Model initialize function */
void HDL_DUT_BCHEncoder_initialize(const char_T **rt_errorStatus,
  RT_MODEL_HDL_DUT_BCHEncoder_T *const HDL_DUT_BCHEncoder_M,
  DW_HDL_DUT_BCHEncoder_f_T *localDW)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatusPointer(HDL_DUT_BCHEncoder_M, rt_errorStatus);

  /* states (dwork) */
  (void) memset((void *)localDW, 0,
                sizeof(DW_HDL_DUT_BCHEncoder_f_T));
}
