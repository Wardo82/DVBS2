open_system('gm_Copy_of_ldpc_dvbs2_model_v2');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator', 'user2');
annotate_port('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator', 0, 1, 'cp : 1.9365 ns');
cs.HiliteType = 'user1';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'blue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/bit_counter1', 'user1');
annotate_port('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/bit_counter1', 0, 1, 'cp : 0.474 ns');
cs.HiliteType = 'user1';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'blue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/slot_counter', 'user1');
annotate_port('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/slot_counter', 1, 2, 'cp : 1.9365 ns');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'lightblue';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/bit_count', 'user2');
annotate_port('gm_Copy_of_ldpc_dvbs2_model_v2/ldpc_encoder/address_calculator/bit_count', 0, 1, 'cp : 1.3285 ns');