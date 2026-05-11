% Notch filter centred at 50 Hz
wo  = 50/(fs/2);       % normalised frequency (0 to 1)
bw  = wo/35;           % bandwidth — controls how narrow the notch is

[b, a] = iirnotch(wo, bw);   % design the filter

filtered = filter(b, a, noisy);  % apply to noisy signal