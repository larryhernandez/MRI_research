# Description of this Respository
This repository contains MATLAB functions and scripts, as well as Linux C-shell scripts, that I developed to perform basic image processing and to facilitate image reconstruction with raw MRI data acquired by a novel, 3D Rosette-like sampling pattern (i.e. MRI scan), called icones. Implementing this novel 3D scan onto clinical MRI Scanners and developing the code presented here were part of my duties as an MRI researcher.

The MATLAB code provided here would achieve the following tasks if provided with an appropriate MRI data file:
    1. Extract raw imaging data and calibration data from MRI data files
    2. Generate 3D coordinates for each MRI data sample (i.e. 3D k-space map)
    3. Create a crude estimate of the density compensation coefficients needed for image reconstruction, OR create a symbolic link to a file containing previously generated density compensation coefficients
    4. Utilize calibration data to reduce image blurring by correcting phase errors and trajectory deviations caused by eddy currents.
    5. Generate impulse response of this particular MRI sampling pattern (useful for designing and improving the MRI data collection method)


# Description of the 'icones' 3D Rosette-like MRI Sampling Pattern
The 3D icones sampling pattern was designed for rapid, three-dimensional, high resolution magnetic resonance imaging of the body. Specific applications include visualizing the cartilage of the knee and hip (to detect cartilage lesions caused by acute injury or osteoarthritis), whole brain imaging (tumor detection), and bilateral breast imaging (tumor / lesion detection and characterization).

On a fundamental level, the icones sampling pattern is represented by a two-dimensional rosette-like petal (Figure 1a). To achieve 3D sampling, this petal is rotated into 3D space (Figure 1b) through the use of rotation matrices. Figure 1b depicts a sequential ordering of these rotations, starting at the south pole (-kz) and spiraling upward to the north pole (+kz). However, a non-sequential or random ordering of these rotations is also possible.


Figure 1a: 2D icone petal  |Figure 1b: Full 3D icones
:-------------------------:|:-------------------------:
![k-Space units are m^{-1}](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1a_2D_icones_petal.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1b_icones_animated_3Dsampling.gif)


# Images obtained with 3D icones


## Verification that the Calibration Technique Improves Image Quality

         Coronal           |         Sagittal
:-------------------------:|:-------------------------:
![]()  |  ![]()


## Brain

After the calibration method was developed, tested, and properly implemented, I scanned a brain using this novel 3D icones MRI scan. It will be noted here that the 3D icones scan was implemented as a Spoiled Gradient Recall (SPGR) acquisition, which is a description of the primary physical mechanisms that were used to create contrast between various body tissues. The SPGR mode generates tissue contrasts that are particularly useful for visualizing the various regions of the brain. Shown below are images of a human brain (from a live, consenting volunteer) that were created using the 3D icones scan in SPGR mode.

Note: While you see two distinct views of the brain, only one scan was utilized. That is the beauty of a 3D MRI scan like this one which acquires isotropic voxels. The volunteer was scanned only once using an Axial plane, and axial images were generated. Then, the axial data were reformatted with standard imaging software to provide a view from the Sagittal plane. Pretty cool, huh?!

          Axial            |     Sagittal Reformat
:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Axial_150.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Sagittal_158.jpg)

## Knee

The 3D icones sampling pattern was also implemented as a Fat-Suppressed Alternating Repetition Time (FS-ATR) acquisition, which is yet another physical mechanism for generating image contrast. The FS-ATR mode does a pretty good at suppressing the MRI signal that comes from lipids (i.e. fatty tissue) within the body. These lipid signals often obscure visibility of tissues that physicians are often more interested in visualizing, like cartilage in the knee or fibroglandular tissue in the breast. The FS-ATR mode also generates bright fluid signal and intermediate cartilage signal, which lead to improved detection of cartilage defects. Shown below are three views of a healthy knee that have been acquired using a single 3D icones scan with an Axial plane scan prescription.


         Axial             |         Sagittal	       |           Coronal
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Axial_168.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Axial_Sagittal_141.jpg) | ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Axial_Coronal_219.jpg)