Y_filt = abs(fft(filtered))/N;

figure;
subplot(2,1,1);
plot(f(1:N/2), Y(1:N/2));
title('Before filtering — 50 Hz spike present');
xlim([0 600]); xlabel('Frequency (Hz)'); ylabel('Magnitude');

subplot(2,1,2);
plot(f(1:N/2), Y_filt(1:N/2));
title('After filtering — 50 Hz spike removed');
xlim([0 600]); xlabel('Frequency (Hz)'); ylabel('Magnitude');