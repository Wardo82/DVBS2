function run_mlhdlc_sysobj_ex_fixpt_fil
% Program FPGA
disp('### Programming FPGA ');
filProgramFPGA('Xilinx Vivado','/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/mlhdlc_sysobj_ex_fixpt_fil.bit',1);

disp('### Waiting for FPGA initialization ');
pause(3);
% Clear persistent variables before simulation
l_clearPersistentVariable;

% Clear persistent variables after simulation
onCleanupObj = onCleanup(@() l_clearPersistentVariable);

% Add current working directory to search path
savedPathVar = addpath(pwd);
restorePathObj = onCleanup(@() path(savedPathVar));

% Run generated test bench
disp('### Simulating generated test bench ');
% Exercise the compiled version of mlhdlc_sysobj_ex_wrapper_fixpt_fil in the generated test bench.
% To debug the test bench with the original function "mlhdlc_sysobj_ex_wrapper_fixpt_fil",
% replace the next line with "mlhdlc_sysobj_ex_tb_fil"
coder.runTest('localRunTest_mlhdlc_sysobj_ex_fixpt','mlhdlc_sysobj_ex_wrapper_fixpt_fil');
% To recompile MATLAB function "mlhdlc_sysobj_ex_wrapper_fixpt_fil",
% run the re-compilation function "localRecompile_mlhdlc_sysobj_ex_wrapper_fixpt_fil".
disp('### Finished Simulation');

% Plot logged output values
global gEMLSimLogRunIdx;
global gEMLSimLogVal_out_y_out;
global gEMLSimLogVal_out_ref_y_out;
figure;
hold on;
subplot(3,1,1);
plot(gEMLSimLogVal_out_y_out(1:gEMLSimLogRunIdx-1,:),'b');
title('y_out:fil','Interpreter','none')
subplot(3,1,2);
plot(gEMLSimLogVal_out_ref_y_out(1:gEMLSimLogRunIdx-1,:),'r');
title('y_out:Reference','Interpreter','none')
subplot(3,1,3);
plot(double(gEMLSimLogVal_out_y_out(1:gEMLSimLogRunIdx-1,:)) - double(gEMLSimLogVal_out_ref_y_out(1:gEMLSimLogRunIdx-1,:)),'m');
title('y_out:Difference','Interpreter','none')
hold off;
global gEMLSimLogVal_out_delayed_xout;
global gEMLSimLogVal_out_ref_delayed_xout;
figure;
hold on;
subplot(3,1,1);
plot(gEMLSimLogVal_out_delayed_xout(1:gEMLSimLogRunIdx-1,:),'b');
title('delayed_xout:fil','Interpreter','none')
subplot(3,1,2);
plot(gEMLSimLogVal_out_ref_delayed_xout(1:gEMLSimLogRunIdx-1,:),'r');
title('delayed_xout:Reference','Interpreter','none')
subplot(3,1,3);
plot(double(gEMLSimLogVal_out_delayed_xout(1:gEMLSimLogRunIdx-1,:)) - double(gEMLSimLogVal_out_ref_delayed_xout(1:gEMLSimLogRunIdx-1,:)),'m');
title('delayed_xout:Difference','Interpreter','none')
hold off;

end

function l_clearPersistentVariable
% Clear reference DUT function
clear mlhdlc_sysobj_ex_fixpt;

% Clear FPGA-in-the-Loop System object wrapper function
clear mlhdlc_sysobj_ex_fixpt_sysobj_fil;

% Clear FPGA-in-the-Loop function
clear mlhdlc_sysobj_ex_fixpt_fil;

% Clear generated MEX function
clear mlhdlc_sysobj_ex_wrapper_fixpt_fil_mex

% Clear logged values
clear global gEMLSimLogRunIdx;
clear global gEMLSimLogVal_out_y_out;
clear global gEMLSimLogVal_out_delayed_xout;
clear global gEMLSimLogVal_out_ref_y_out;
clear global gEMLSimLogVal_out_ref_delayed_xout;

end

