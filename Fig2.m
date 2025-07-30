%% Fig2A surface plot 
% SSFS_thresholded = fmri_data('SSFS_5000_unc_001.nii', 'GM_mask.nii');
FEFS_thresholded = fmri_data('FEFS_unc_001.nii', 'GM_mask.nii');
surface(FEFS_thresholded); 
%% Fig2A axial/saggital maps 
figure;o2 = fmridisplay;
% specifying 'axial  z'/'saggital  x' and slice_range you want to visualize for corresponding maps, like;
o2 = montage(o2, 'saggital', 'slice_range', [30 42], 'spacing', 2);
o2=addblobs(o2,region(FEFS_thresholded)); 
snapnow 