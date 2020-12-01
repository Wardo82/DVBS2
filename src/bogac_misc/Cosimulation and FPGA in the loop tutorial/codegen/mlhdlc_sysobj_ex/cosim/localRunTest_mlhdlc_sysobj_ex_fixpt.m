function localRunTest_mlhdlc_sysobj_ex_fixpt
   fxptPath = '/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fixpt';
addpath(fxptPath);
cleanupObj = onCleanup(@() rmpath(fxptPath));

   mlhdlc_sysobj_ex_tb_cosim;
end

