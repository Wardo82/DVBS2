function [teststream, indices, correlations] = FrameSyncTest(framecount,XFECFRAME,dvb)
    teststream = [];
    for i = 1:framecount
        teststream = [teststream; PLFrameFwrd(XFECFRAME,dvb)];
    end
    teststream = circshift(teststream,50);
    [indices, correlations] = PeakSearch(teststream,dvb);
end