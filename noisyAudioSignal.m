fs = 8000;           % sampling frequency (Hz)
t  = 0:1/fs:1-1/fs;  % 1 second time vector

clean   = sin(2*pi*440*t);          % 440 Hz tone (musical A)
noise   = 0.8*sin(2*pi*50*t);       % 50 Hz power-line noise
noisy   = clean + noise;            % corrupted signal

% Plot time domain
figure;
subplot(2,1,1); plot(t(1:200), clean(1:200));  title('Clean signal');
subplot(2,1,2); plot(t(1:200), noisy(1:200)); title('Noisy signal');