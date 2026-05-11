N    = length(noisy);
f    = (0:N-1)*(fs/N);       % frequency axis
Y    = abs(fft(noisy))/N;    % magnitude spectrum

figure;
plot(f(1:N/2), Y(1:N/2));
xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('FFT of noisy signal — 50 Hz spike visible');
xlim([0 600]);