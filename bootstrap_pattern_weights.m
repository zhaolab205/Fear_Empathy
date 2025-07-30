clear 
load('discovery_face_81.mat')
[~, stats_boot] = predict(discovery_face_81,  'algorithm_name', 'cv_svr', 'nfolds', 1, 'error_type', 'mse','useparallel', 0,  'bootweights', 'bootsamples', 5000); 

% Here, we replaced weight values with Z values
stats_boot_1=stats_boot;
stats_boot_1.weight_obj.dat=stats_boot_1.WTS.wZ';
data_threshold = threshold(stats_boot_1.weight_obj, .001, 'unc'); 

write(data_threshold, 'thresh', 'fname', 'FEFS_unc_001.nii');
