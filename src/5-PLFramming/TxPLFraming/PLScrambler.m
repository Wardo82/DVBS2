function [scrambledseq] = PLScrambler(input)

    %generating a gold sequence
    goldseq = comm.GoldSequence('FirstPolynomial','x^18 + x^7 + 1',...
        'SecondPolynomial','x^18 + x^10 + x^7 + x^5 + 1',...
        'FirstInitialConditions',[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0],...
        'SecondInitialConditions',[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1],...
        'Index',0 ,'SamplesPerFrame', 66420 + 131071);

    x = goldseq();
    
    %memory allocation
    highdeg = zeros(66420,1);
    
    %The gold sequence takes values between 1 and 0. To convert this
    %sequence to a sequence which contains complex numbers it should be
    %first converted into a sequence that has values between 0 and 3.
    for i = 1:66420
        highdeg(i) = 2 * x(mod((i + 131071),(2^18 - 1))) + x(i);
    end

    %memory allocation
    scramblingseq = zeros(66420,1);

    %converting the higher degree sequence into a sequence containing
    %complex numbers.
    for i = 1:66420
        scramblingseq(i) = exp(highdeg(i) * 1i * pi / 2);
    end
    
    
    %Multiplying the scrambling sequence with plframe (header not included).
    scrambledseq = input(91:end) .* scramblingseq(1:numel(input(91:end))).';
    scrambledseq = [input(1:90) scrambledseq];    
 
    %disp(size(scrambledseq));
    %multiply scramblingseq with I/Q signal
end
