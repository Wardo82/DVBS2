clear variables;

% Input variables
k = 48408;
message = uint8(randi([0 1], k, 1));

% Run the simulink model with the 'sim' command
out = sim('hdl_dut_bch_encoder.slx');

% Extract the output of the simulation
codewords = out.simout.Data;

