# Signals and Systems Assignment

This repository contains various signals analysis projects I did in 2020 and 2021. I have also added the finall project in this repository. For these, I followed the book **Signals and Systems**, Book by **Alan V. Oppenheim**

![download](https://user-images.githubusercontent.com/47540320/115142847-88a94a80-a061-11eb-878f-788e19405bb8.jpg)

---

## Final Project

This project generates echo in sound waves using matlab.

You can add your own audio in to the program or also record your own audio. I have also added a feature where you can control the reverb and output amplitude ( just like a DJ's sound controller ) in the code : 

![Capture](https://user-images.githubusercontent.com/47540320/115142630-7aa6fa00-a060-11eb-8fe0-9611807dceee.JPG)

This is the function for the project. This will have 4 parameters
  * 1st is the input signal
  * 2nd is the sampling frequency
  * 3rd is the reverb delay length in seconds
  * 4th is the amplitude of echo sound

---

## Project Files Description

 1. **Development of an 7th order Butterworth filter and plotting the B(s)B(-s) signal**

For my case, the filter is a low pass normalizing filter and hence, the poles would lie on the boundary of the circle r = Wc.

| B(s) | B(s)B(-s) |
|------|-----------|
| ![download](https://user-images.githubusercontent.com/47540320/115143244-bee7c980-a063-11eb-9cf5-3d0d5377a0f3.jpg) | ![download](https://user-images.githubusercontent.com/47540320/115143256-d8891100-a063-11eb-9a46-41990e5f6d3d.jpg) |

The transfer function obtained is as follows :

![download](https://user-images.githubusercontent.com/47540320/115143293-125a1780-a064-11eb-9856-c7e3152bcd46.jpg)

 2. **Plotting the FFT of a combination of 2 simple sinusoidal signals and developing its magnitude spectrum**
 
 ![download](https://user-images.githubusercontent.com/47540320/115143354-6107b180-a064-11eb-9877-5b4bcdde30d8.jpg)  and ![download](https://user-images.githubusercontent.com/47540320/115143503-5f8ab900-a065-11eb-8203-46fe77a06823.jpg)


 In the magnitude specturm, I observed the following points:
 * All the 4 peaks have a magnitude nearing to 2 i.e. the magnitude or amplitude of the original cosine functions.
 * The graph has 4 peaks and I will justify them one by one:
   * 1st peak – It is at frequency of 507Hz owing to sig_1 or the cosine corresponding to 507Hz frequency in input signal.
   *  2nd peak – It is basically formed to represent (-11507) Hz frequency. {2cos x = e^jx + e^-jx}. So, it’s the -jx part and because of change in axis, the frequency is shown over here.
   *  3rd peak – It shows 11507 Hz frequency. Now because of constraints in axis and due to time period complications in FFT, it is shown as (20000 – 11507 ) Hz . 
   *  4th peak - It is owing to the -507 Hz frequency and is formed in symmetry, just like peak 2 is formed.
 
 3. **Generating complex convolutions in continuous time domain**
 
 ![download](https://user-images.githubusercontent.com/47540320/115143410-cd82b080-a064-11eb-9e74-582d5266f566.jpg)
 
 4. **Generating complex convolutions in discrete time domain**
 
 ![download](https://user-images.githubusercontent.com/47540320/115143420-e1c6ad80-a064-11eb-8eba-654a0ea093d2.jpg)
 
 5. **Given a system defination, developing a pole-zero map to comment on its stability.**
 
 Given the signal ![download](https://user-images.githubusercontent.com/47540320/115143531-8cd76700-a065-11eb-9a15-63844ef4f5a3.jpg), 
 the pole-zero map is as follows:
 
 ![download](https://user-images.githubusercontent.com/47540320/115143557-b2fd0700-a065-11eb-83da-a1bf3fd35f7c.jpg)

 The stability analysis is as follows:
 * For the system to be stable and causal, mode(z) must be greater than the mode(poles).i.e. the system must be completely right-handed or on the positive axis of time. Which is proved by the hand calculations above.
 * Also, the poles marked on the left side of the real axis, this means that the system is bounded . It has no exponentially increasing component
 
 6. **Generation of a hybrid signal and applying time-scaling and time-shifting to that.**
 
 ![download](https://user-images.githubusercontent.com/47540320/115143618-19822500-a066-11eb-890a-0d34558925a3.jpg)
 
 7. **Generation of a standard signal and applying time-scaling and time-shifting to that.**
 
 ![download](https://user-images.githubusercontent.com/47540320/115143637-2ef74f00-a066-11eb-9619-4b443acc2699.jpg)
