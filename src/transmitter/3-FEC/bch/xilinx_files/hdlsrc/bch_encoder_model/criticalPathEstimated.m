open_system('gm_bch_encoder_model');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_bch_encoder_model/bch_encoder/shift_and_xor', 'user2');
annotate_port('gm_bch_encoder_model/bch_encoder/shift_and_xor', 1, 3, 'cp : 0.674 ns');
cs.HiliteType = 'user1';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'blue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_bch_encoder_model/bch_encoder/generator', 'user1');
annotate_port('gm_bch_encoder_model/bch_encoder/generator', 0, 1, 'cp : 0 ns');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_bch_encoder_model/bch_encoder/Logical Operator', 'user2');
annotate_port('gm_bch_encoder_model/bch_encoder/Logical Operator', 0, 1, 'cp : 0.674 ns');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_bch_encoder_model/bch_encoder/shift_and_xor/shift_and_xor', 'user2');
annotate_port('gm_bch_encoder_model/bch_encoder/shift_and_xor/shift_and_xor', 1, 3, 'cp : 0.674 ns');