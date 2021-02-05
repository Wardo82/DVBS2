open_system('gm_base_band_shaping_model');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_base_band_shaping_model/bb_shaping/FIR Interpolation', 'user2');
annotate_port('gm_base_band_shaping_model/bb_shaping/FIR Interpolation', 0, 1, 'cp : 0 ns');
