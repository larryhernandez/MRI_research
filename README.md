# Description of this Respository
This repository contains MATLAB functions and scripts, as well as Linux C-shell scripts, that I developed to perform basic image processing and to facilitate image reconstruction with raw MRI data acquired by the novel, 3D Rosette-like sampling pattern, called icones. Implementing this novel 3D scan onto clinical MRI Scanners and developing the code presented here were part of my duties as an MRI researcher.

The MATLAB code provided here would achieve the following tasks if provided with an appropriate MRI data file:
	1. Extract raw imaging data and calibration data from MRI data files
	2. Generate 3D coordinates for each MRI data sample (i.e. 3D k-space map)
	3. Create a crude estimate of the density compensation coefficients needed for image reconstruction, OR create a symbolic link to a file containing previously generated density compensation coefficients
	4. Utilize calibration data to reduce image blurring by correcting phase errors and trajectory deviations caused by eddy currents.
	5. Generate impulse response of this particular MRI sampling pattern (useful for designing and improving the MRI data collection method)


# Description of the 3D Rosette-like 'icones' MRI Sampling Pattern
The 3D icones sampling pattern was designed for rapid, three-dimensional, high resolution MRI. Specific applications include visualizing the cartilage of the knee and hip (to detect cartilage lesions ), as well as whole brain imaging, and bilateral breast imaging (for tumor detection and characterization).

On a fundamental level, the icones sampling pattern is represented by a two-dimensional rosette-like pattern (Figure 1a) that can be rotated into 3D space (Figure 1b).



Figure 1a: 2D Depiction    |Figure 1b:  3D icones
:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1a_2D_icones_petal.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1b_icones_animated_3Dsampling.gif)


# Anatomical Imaging


## Calibration Technique: Improvement in image quality

         Coronal           |         Sagittal
:-------------------------:|:-------------------------:
![]()  |  ![]()


## Knee

         Axial             |         Sagittal	       |           Coronal
:-------------------------:|:-------------------------:|:-------------------------:
![]()  |  ![]() | ![]()


## Brain

         Coronal           |         Sagittal
:-------------------------:|:-------------------------:
![]()  |  ![]()