function y = srrc_filter_dut(frame, coeffs)

persistent obj
if isempty(obj)
    obj = transmit_srrc_filter('l',1800, 'interpolation_factor', 4);
end

y = step(obj, frame, coeffs);

end