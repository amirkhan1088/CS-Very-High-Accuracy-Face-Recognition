# CS_Very-High-Accuracy-Face/object-Recognition
This work deals with high-level inference (face/object recognition) using compressive sensing (CS). Images (X) are compressed using a compressive sensing scheme (Y= Phi * X) and the generated compressed samples (Y) are used as features for the linear support vector machine (SVM). The purpose of this work is to verify the possibility of performing high-level inference on-chip using CS. The image sensor acquires the image in a compressed domain performing acquisition and compression at the same time. These compressed samples are obtained by projecting the pixels' values in some low-dimensional space using a measurement matrix. These compressed image samples should require less number of bits as compared to the conventional image sensor. The smaller the number of bits needed for a compressed image better is the compressio000. These compressed image samples possess the information of signal and hence can be directly used as feature input to linear SVM. Efficacy of CS depends on the methods of CS sample generation and on measurement matrix. 
## How does it work?
Download the datasets given from the links below (AT&T is no more available on it's original link). Keep the dataset in the rootFolder. Keep the program file in the folder containing rootFolder. Run the program directly for each dataset individually.

## databases can be downloaded from the following links
1. AT&T dataset https://www.kaggle.com/kasikrit/att-database-of-faces (original link https://www.cl.cam.ac.uk/research/dtg/attarchive/facedatabase.htm)
2. Extended Yale B (uncropped) http://vision.ucsd.edu/~leekc/ExtYaleDatabase/ExtYaleB.html
3. Georgia Tech Face Database https://computervisiononline.com/dataset/1105138700
