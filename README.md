# Description of this Repository
This [repository](https://github.com/larryhernandez/MRI_research) contains MATLAB functions and scripts, as well as Linux C-shell scripts, that I developed to facilitate image reconstruction for a novel, 3D MRI scan with the name icones.

The code in this repository would achieve the following tasks if an appropriate MRI data file were provided:
  1. Extract raw imaging data and calibration data from MRI data files.
  2. Generate 3D coordinates for each MRI data sample collected. In MRI terminology, this produces a 3D k-space map which is needed for creating images with data that have been collected with a non-Cartesian scan like icones.
  3. Create a crude estimate of the density compensation coefficients needed for image reconstruction, OR create a symbolic link to a file that contains previously generated density compensation coefficients.
  4. Utilize calibration data to restore signal loss and to reduce image blurring caused by eddy currents.

# How to Use This Code
I am not at liberty to provide any raw imaging data nor the additional software required to convert that data into images. However, I will provide a quick description for using this code anyway.


# Background: Description of the 'icones' 3D Rosette-like MRI Data Sampling Pattern
Utilizing image reconstruction software to create images is one thing. However, it makes sense to have a basic understanding of how that data was collected in the first place. This is the section where I provide a very brief synopsis of the data collection scheme for this 3D icones scan.

For those unfamiliar with magnetic resonance imaging, the data acquisition scheme can be interpreted as a process of collecting data points from a two-dimensional (2D) or three-dimensional (3D) space. Altogether, this collection of points is referred to as a "sampling pattern". Sometimes sampling patterns resemble familiar shapes when drawn on paper. Examples include a spiral, a rectangular grid of points (aka Cartesian sampling pattern), or a collection of straight lines that are arranged much like the spokes of a wheel (aka radial scanning).

In simplest terms, the icones sampling pattern can be represented by a two-dimensional rosette-like petal (Figure 1a). To generate the full 3D sampling pattern, this petal is strategically rotated into 3D space (Figure 1b) using special equations. Figure 1b depicts a sequential ordering of these rotations, starting at the south pole (-kz) and spiraling upward to the north pole (+kz). However, a non-sequential or random ordering of these rotations is also possible.

The 3D icones sampling pattern was designed for rapid, three-dimensional, high resolution magnetic resonance imaging of the body. Specific applications of 3D icones include visualizing the cartilage of the knee and hip (to detect cartilage lesions caused by acute injury or osteoarthritis), whole brain imaging (tumor detection), and bilateral breast imaging (tumor / lesion detection and characterization).


Figure 1a: 2D icone petal  |Figure 1b: Full 3D icones
:-------------------------:|:-------------------------:
![k-Space units are m^{-1}](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1a_2D_icones_petal.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Figure_1b_icones_animated_3Dsampling.gif)


# Select Images


## Quality Assurance Phantom: Visual Verification that the Calibration Technique Improves Image Quality
As previously mentioned, a calibration method was devised and employed to reduce blurring and restore signal losses that are caused by unwanted eddy currents that arise during the scan. The details of this correction scheme are omitted here; however, I have provided two images of a quality assurance phantom to demonstrate that this calibration method is effective. It is apparent from the images below that this method does a great job of correcting image artifacts. In the corrected image labeled "After" the edges of the phantom are depicted accurately (green and yellow arrows), a grey blurry "fog" (red arrow) that once covered a large region of the image has been removed, and signal loss that previously corrupted the entire image has been restored.


              Before               |  After
:---------------------------------:|:---------------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/ACR_phantom_without_calibration.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/ACR_phantom_calibration.jpg)


## Brain Scanning with 3D icones

It's great that the scan and reconstruction worked well on a phantom, but what about on an actual human being? Well, after the calibration method was developed, tested, and properly implemented, the brain of a live human was scanned using this novel MRI scan. The final image are displayed below.

          Axial            |     Sagittal Reformat
:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Axial_150.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Brain_FSPGR_Sagittal_158.jpg)


Note: While you see two distinct views of the brain, only one scan was utilized. That is the beauty of a 3D MRI scan like this one which acquires isotropic voxels. The volunteer was scanned only once using an Axial plane, and a set of 400 images with an axial view were generated (for brevity only one axial image is displayed). Then, the axial data were reformatted with standard imaging software to generate 400 images with a view from the Sagittal plane. Pretty cool, huh?!

## Knee Scan with 3D icones

The 3D icones sampling pattern was also implemented for imaging the knee. While the reconstruction process is the same as before, the physics employed for this type of tissue contrast is different that what was used for imaging the brain. Those details will be omitted here, but as you can see from the images below, it is possible to use this scan for imaging the human knee.


         Axial             |         Sagittal	       |           Coronal
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Axial_168.jpg)  |  ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Sagittal_141.jpg) | ![](https://github.com/larryhernandez/MRI_research/blob/master/Knee_FSATR_Coronal_219.jpg)