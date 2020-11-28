clear variables;

% Input variables
k = 48408;
message = logical(randi([0 1], k, 1));

% Run the simulink model with the 'sim' command
out = sim('hdl_dut_bch_encoder.slx');
yout = out.simout;

% Extract the output of the simulation
codewords = yout.Data;
