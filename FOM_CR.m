function [FoM CR] = FOM_CR(Accuracy,num_samples,N,sample_px_comb,B_I)
% Accuracy is used in percentage
% num_samples-- represents the number of samples required for inference
%   sample_px_comb -- number of pixels whose combination is a sample
%B -- number of bytes required to reperesent a compressed samples
%B_I -- equal to 1 for color images or 0 for gray images
% N numbe rof pixels in the image; N can be equal to sample_px_comb if each
% sample is the linear combination of all pixels.
% where B_Phi is the number of bits required by the elements of measurement
% matrix
% B_II is the pixel bit depth. It can be 8 for gray images and 24 for color
% images ==> B_I = 8 for gray and B_I = 24 for color
if B_I ==1
    B_II = 24;
elseif B_I == 0
    B_II = 8;
else
    error('B_I must be 1(color images) or 0(gray images), kindly enter correct value')
end
B_Phi = 1;
%B_Phi=1; unless the ternary/fractional_coefficients measurement matrix is used
B = ceil(log2(sample_px_comb)) + B_Phi + B_II;
B_Phi=0; % ignoring the number of bits required for coefficients of Phi
CR = N*B_II/(num_samples*B);
FoM = Accuracy/(num_samples*B/8);

end

