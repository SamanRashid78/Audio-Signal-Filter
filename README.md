# Audio Notch Filter (Power-Line Noise Removal)
A MATLAB project that removes 50 Hz power-line noise from an audio signal using a digital notch filter, verified through FFT spectrum analysis.

## What This Project Does
Power-line interference (50 Hz in Pakistan/most of the world) is one of the most common sources of noise in audio and sensor systems. This project simulates a clean 440 Hz audio tone, corrupts it with synthetic 50 Hz noise, then designs and applies a notch filter to remove it, measuring the attenuation achieved.

## How It Works
1. A 440 Hz sine wave is generated as the clean signal
2. 50 Hz noise is added synthetically to simulate power-line interference
3. A notch filter is designed using `iirnotch()` centred at 50 Hz
4. The filter is applied and the output is compared to the original using FFT plots
5. Attenuation is calculated in dB at the 50 Hz bin

## Files
```
audio-notch-filter/
├── attenuation.m         ← calculates dB attenuation at 50 Hz
├── fftMoneyShot.m        ← before/after FFT comparison plot
├── notchFilter.m         ← filter design and application
├── fftNoiseSpike.m       ← FFT of noisy signal showing 50 Hz spike
├── noisyAudioSignal.m    ← signal generation (clean + noise)
└── results.pdf           ← annotated screenshots with descriptions
```
## How to Run
1. Run `noisyAudioSignal.m` first to generate the signal
2. Run `fftNoiseSpike.m` to see the 50 Hz spike in frequency domain
3. Run `notchFilter.m` to apply the filter
4. Run `fftMoneyShot.m` to see the before/after FFT comparison
5. Run `attenuation.m` to get the dB result
6. See `results.pdf` for annotated screenshots and observations

## Results
- **Noise frequency targeted:** 50 Hz
- **Attenuation achieved:** 13.1 dB
- **Signal frequency preserved:** 440 Hz

## Tools Used
- MATLAB R2014a
- Signal Processing Toolbox (`iirnotch`, `filter`)

## What I Learned
- How digital notch filters work at a signal level
- FFT interpretation: Reading frequency domain plots to identify noise sources
- Practical application of IIR filter design for real-world noise (50 Hz is literally present in every electrical system in Pakistan)
