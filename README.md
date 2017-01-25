# Description of this Repository
This repository contains MATLAB functions and scripts, as well as Linux C-shell scripts, that I developed to perform basic image processing and to facilitate image reconstruction with raw MRI data acquired by a novel, 3D Rosette-like sampling pattern (i.e. MRI scan), called icones. Implementing this novel 3D scan onto clinical MRI Scanners and developing the code presented here were part of my duties as an MRI researcher.

The MATLAB code provided here would achieve the following tasks if provided with an appropriate MRI data file:
  1. Extract raw imaging data and calibration data from MRI data files
  2. Generate 3D coordinates for each MRI data sample (i.e. produce a 3D k-space map)
  3. Create a crude estimate of the density compensation coefficients needed for image reconstruction, OR create a symbolic link to a file that contains previously generated density compensation coefficients
  4. Utilize calibration data to restore signal loss and to reduce image blurring caused by eddy currents.
  5. Generate an impulse response of this particular MRI sampling pattern (useful for designing and improving the MRI data collection method)


# Description of the 'icones' 3D Rosette-like MRI Sampling Pattern
The 3D icones sampling pattern was designed for rapid, three-dimensional, high resolution magnetic resonance imaging of the body. Specific applications include visualizing the cartilage of the knee and hip (to detect cartilage lesions caused by acute injury or osteoarthritis), whole brain imaging (tumor detection), and bilateral breast imaging (tumor / lesion detection and characterization).

On a fundamental level, the icones sampling pattern is represented by a two-dimensional rosette-like petal (Figure 1a). To achieve 3D sampling, this petal is rotated into 3D space (Figure 1b) through the use of rotation matrices. Figure 1b depicts a sequential ordering of these rotations, starting at the south pole (-kz) and spiraling upward to the north pole (+kz). However, a non-sequential or random ordering of these rotations is also possible.


Figure 1a: 2D icone petal  |Figure 1b: Full 3D icones
:-------------------------:|:-------------------------:
![k-Space units are m^{-1}](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1a_2D_icones_petal.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1b_icones_animated_3Dsampling.gif)


# The Calibration Scheme and Anatomical Images obtained with 3D icones


## Visual verification that the Calibration Technique Improves Image Quality
As previously mentioned, a calibration method was devised and employed to reduce blurring and restore signal losses that are caused by unwanted eddy currents that arise during the scan. In this section, two images of a quality assurance phantom are provided to verify that this calibration method is effective. Before and after images the calibration method was employed to process the raw MRi image data. This method does a great job of correcting image artifacts. In the corrected (i.e. "After") image it is obvious that the edges of the phantom are depicted accurately (green and yellow arrows), a grey blurry "fog" (red arrow) that once covered a large region of the image has been removed, and signal loss that previously corrupted the entire image has been restored.


              Before               |  After
:---------------------------------:|:---------------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/ACR_phantom_without_calibration.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/ACR_phantom_calibration.jpg)


## Brain Scanning with 3D icones

After the calibration method was developed, tested, and properly implemented, I scanned a brain using this novel 3D icones MRI scan. It will be noted here that the 3D icones scan was implemented as a Spoiled Gradient Recall (SPGR) acquisition, which is a description of the primary physical mechanisms that were used to create contrast between various body tissues. The SPGR mode generates tissue contrasts that are particularly useful for visualizing the various regions of the brain. Shown below are images of a human brain (from a live, consenting volunteer) that were created using the 3D icones scan in SPGR mode.

Note: While you see two distinct views of the brain, only one scan was utilized. That is the beauty of a 3D MRI scan like this one which acquires isotropic voxels. The volunteer was scanned only once using an Axial plane, and a set of 400 images with an axial view were generated (for brevity only one axial image is displayed). Then, the axial data were reformatted with standard imaging software to generate 400 images with a view from the Sagittal plane. Pretty cool, huh?!

          Axial            |     Sagittal Reformat
:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Axial_150.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Sagittal_158.jpg)

## Knee Scan with 3D icones

The 3D icones sampling pattern was also implemented as a Fat-Suppressed Alternating Repetition Time (FS-ATR) acquisition, which is yet another physical mechanism for generating image contrast. The FS-ATR mode does a pretty good job of suppressing the MRI signal that comes from lipids (i.e. fatty tissue) within the body. In the case of knee imaging, this would be the bone marrow. These lipid signals often obscure visibility of tissues that physicians are often more interested in visualizing, like cartilage surfaces in the knee or fibroglandular tissue in the breast. The FS-ATR mode also generates bright fluid signal and intermediate cartilage signal, which lead to improved detection of cartilage defects. Shown below are three orthogonal views of a healthy knee that have been acquired using a single 3D icones scan (acquired with an Axial view).


         Axial             |         Sagittal	       |           Coronal
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Axial_168.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Sagittal_141.jpg) | ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Coronal_219.jpg)