/*
 * Code generation for system model 'HDL_DUT_BCHEncoder'
 * For more details, see corresponding source file HDL_DUT_BCHEncoder.c
 *
 */

#ifndef RTW_HEADER_HDL_DUT_BCHEncoder_h_
#define RTW_HEADER_HDL_DUT_BCHEncoder_h_
#include <string.h>
#ifndef HDL_DUT_BCHEncoder_COMMON_INCLUDES_
#define HDL_DUT_BCHEncoder_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 /* HDL_DUT_BCHEncoder_COMMON_INCLUDES_ */

#include "HDL_DUT_BCHEncoder_types.h"

/* Shared type includes */
#include "multiword_types.h"

/* Block signals for model 'HDL_DUT_BCHEncoder' */
typedef struct {
  boolean_T lfsr_message[48600];
} B_HDL_DUT_BCHEncoder_c_T;

/* Block states (default storage) for model 'HDL_DUT_BCHEncoder' */
typedef struct {
  BCHEncoder_HDL_DUT_BCHEncoder_T obj; /* '<S1>/MATLAB Systemd' */
  boolean_T objisempty;                /* '<S1>/MATLAB Systemd' */
} DW_HDL_DUT_BCHEncoder_f_T;

/* Real-time Model Data Structure */
struct tag_RTM_HDL_DUT_BCHEncoder_T {
  const char_T **errorStatus;
};

typedef struct {
  B_HDL_DUT_BCHEncoder_c_T rtb;
  DW_HDL_DUT_BCHEncoder_f_T rtdw;
  RT_MODEL_HDL_DUT_BCHEncoder_T rtm;
} MdlrefDW_HDL_DUT_BCHEncoder_T;

/* Model reference registration function */
extern void HDL_DUT_BCHEncoder_initialize(const char_T **rt_errorStatus,
  RT_MODEL_HDL_DUT_BCHEncoder_T *const HDL_DUT_BCHEncoder_M,
  DW_HDL_DUT_BCHEncoder_f_T *localDW);
extern void HDL_DUT_BCHEncoder_Init(DW_HDL_DUT_BCHEncoder_f_T *localDW);
extern void HDL_DUT_BCHEncoder(boolean_T rty_out1[48600],
  B_HDL_DUT_BCHEncoder_c_T *localB, DW_HDL_DUT_BCHEncoder_f_T *localDW);
extern void HDL_DUT_BCHEncoder_Term(DW_HDL_DUT_BCHEncoder_f_T *localDW);

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'HDL_DUT_BCHEncoder'
 * '<S1>'   : 'HDL_DUT_BCHEncoder/BCHEncoder_HDL_DUT'
 */
#endif                                 /* RTW_HEADER_HDL_DUT_BCHEncoder_h_ */
