% Find magnitude at 50 Hz before and after
[~, idx] = min(abs(f - 50));   % index of 50 Hz bin

mag_before = Y(idx);
mag_after  = Y_filt(idx);

attenuation_dB = 20*log10(mag_before / mag_after);
fprintf('Attenuation at 50 Hz: %.1f dB\n', attenuation_dB);