# Audio Notch Filter (Power-Line Noise Removal)
A MATLAB project that removes 50 Hz power-line noise from an audio signal using a digital notch filter, verified through FFT spectrum analysis.

## What This Project Does
Power-line interference (50 Hz in Pakistan/most of the world) is one of the most common sources of noise in audio and sensor systems. This project simulates a clean 440 Hz audio tone, corrupts it with synthetic 50 Hz noise, then designs and applies a notch filter to remove it, measuring the attenuation achieved.

## Results
- **Noise frequency targeted:** 50 Hz
- **Attenuation achieved:** 13.1 dB
- **Signal frequency preserved:** 440 Hz

## How It Works
1. A 440 Hz sine wave is generated as the clean signal
2. 50 Hz noise is added synthetically to simulate power-line interference
3. A notch filter is designed using `iirnotch()` centred at 50 Hz
4. The filter is applied and the output is compared to the original using FFT plots
5. Attenuation is calculated in dB at the 50 Hz bin

## Tools Used
- MATLAB R2014a
- Signal Processing Toolbox (`iirnotch`, `filter`)

## How to Run
1. Open `audio_filter.m` in MATLAB
2. Press **Run**
3. Four figures will generate automatically — export them as `.png` into the `/plots` folder
audio-notch-filter/

## Files
├── audio_filter.m    ← main script, run this
├── README.md
└── plots/
├── noisy_signal.png
├── fft_before.png
└── fft_after.png

## What I Learned
- How digital notch filters work at a signal level
- FFT interpretation: Reading frequency domain plots to identify noise sources
- Practical application of IIR filter design for real-world noise (50 Hz is literally present in every electrical system in Pakistan)
