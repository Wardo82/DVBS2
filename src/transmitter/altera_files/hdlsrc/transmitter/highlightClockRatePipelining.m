open_system('transmitter');
open_system('gm_transmitter');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bb_shaping1', 'user2');
annotate_port('gm_transmitter/tran_dut/bb_shaping1', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/bb_shaping1', 'user2');
annotate_port('transmitter/tran_dut/bb_shaping1', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/stream_adapt', 'user2');
annotate_port('gm_transmitter/tran_dut/stream_adapt', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/stream_adapt', 'user2');
annotate_port('transmitter/tran_dut/stream_adapt', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/p2s', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/bch_encoder/p2s', 'user2');
annotate_port('transmitter/tran_dut/bch_encoder/p2s', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/registers', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/registers', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/bch_encoder/registers', 'user2');
annotate_port('transmitter/tran_dut/bch_encoder/registers', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/interleaver_dut1/interleaver', 'user2');
annotate_port('gm_transmitter/tran_dut/interleaver_dut1/interleaver', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/interleaver_dut1/interleaver', 'user2');
annotate_port('transmitter/tran_dut/interleaver_dut1/interleaver', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/address_calculator', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/address_calculator', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/ldpc_encoder/address_calculator', 'user2');
annotate_port('transmitter/tran_dut/ldpc_encoder/address_calculator', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/p2s', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
hilite_system('transmitter/tran_dut/ldpc_encoder/p2s', 'user2');
annotate_port('transmitter/tran_dut/ldpc_encoder/p2s', 1, 1, 'This subsystem is inhibiting clock-rate pipelining.');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/address_calculator/slot_counter', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/address_calculator/slot_counter', 1, 1, 'Obstacle to clock-rate pipelining');
hilite_system('transmitter/tran_dut/ldpc_encoder/address_calculator/slot_counter', 'user2');
annotate_port('transmitter/tran_dut/ldpc_encoder/address_calculator/slot_counter', 1, 1, 'Obstacle to clock-rate pipelining');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/address_calculator/bit_counter1', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/address_calculator/bit_counter1', 1, 1, 'Obstacle to clock-rate pipelining because the block is in a feedback loop');
hilite_system('transmitter/tran_dut/ldpc_encoder/address_calculator/bit_counter1', 'user2');
annotate_port('transmitter/tran_dut/ldpc_encoder/address_calculator/bit_counter1', 1, 1, 'Obstacle to clock-rate pipelining because the block is in a feedback loop');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/stream_adapt/frame_counter', 'user2');
annotate_port('gm_transmitter/tran_dut/stream_adapt/frame_counter', 1, 1, 'Obstacle to clock-rate pipelining');
hilite_system('transmitter/tran_dut/stream_adapt/frame_counter', 'user2');
annotate_port('transmitter/tran_dut/stream_adapt/frame_counter', 1, 1, 'Obstacle to clock-rate pipelining');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/p2s/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/p2s/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/p2s/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/p2s/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
hilite_system('transmitter/tran_dut/bch_encoder/p2s', 'user2');
annotate_port('transmitter/tran_dut/bch_encoder/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/registers/registers', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/registers/registers', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/bch_encoder/registers/registers', 'user2');
annotate_port('gm_transmitter/tran_dut/bch_encoder/registers/registers', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
hilite_system('transmitter/tran_dut/bch_encoder/registers', 'user2');
annotate_port('transmitter/tran_dut/bch_encoder/registers', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/interleaver_dut1/interleaver/interleaver', 'user2');
annotate_port('gm_transmitter/tran_dut/interleaver_dut1/interleaver/interleaver', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/interleaver_dut1/interleaver/interleaver', 'user2');
annotate_port('gm_transmitter/tran_dut/interleaver_dut1/interleaver/interleaver', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
hilite_system('transmitter/tran_dut/interleaver_dut1/interleaver', 'user2');
annotate_port('transmitter/tran_dut/interleaver_dut1/interleaver', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/p2s/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/p2s/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
cs.HiliteType = 'user2';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'gray';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_transmitter/tran_dut/ldpc_encoder/p2s/p2s', 'user2');
annotate_port('gm_transmitter/tran_dut/ldpc_encoder/p2s/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
hilite_system('transmitter/tran_dut/ldpc_encoder/p2s', 'user2');
annotate_port('transmitter/tran_dut/ldpc_encoder/p2s', 1, 1, 'MATLAB blocks and Stateflow charts can be clock-rate pipelined only if they are stateless. For MATLAB blocks, considering removing use of persistent variables');
