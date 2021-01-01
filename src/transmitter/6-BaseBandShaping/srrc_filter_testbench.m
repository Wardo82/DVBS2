clear srrc_filter_dut
for ii=1:3
    frame = fi(randi([-1 1], 1800, 1));
    y = srrc_filter_dut(frame, srrc_trans_coeffs');
end