
disp('Generating data ............');


% create modulated input sequence
signal      = unmodulatedSignal(signalSteps, samplelength, fChangeProb);
sampleinput = modulatedSignal(signal, carrierFreq, modIndex);
% sampleinput = signal; % testing the unmodulated case


% create a sample output
sampleout = unmodulatedSignalOut(signalSteps, samplelength, fChangeProb);

% plot generated sampleout
figure(1); %clf;
outdim = length(sampleout(:,1));
for k = 1:outdim
    subplot(outdim, 1, k);
    plot(sampleout(k,:));
    if k == 1
        title('sampleout','FontSize',8);
    end
end
    
% plot generated sampleinput
figure(2); %clf;
outdim = length(sampleinput(:,1));
for k = 1:outdim
    subplot(outdim, 1, k);
    plot(sampleinput(k,:));
    if k == 1
        title('sampleinput','FontSize',8);
    end
end