function correlations = get_correlations(train_input_file,dev_input_file,model_save_dir,output_save_dir,sel_thresh)

addpath('/home/rcf-proj/mv/guptarah/AVEC/scripts/svr_baseline/libsvm-mat-2.84-1-fast.v3');

data = load(train_input_file);
targets = data(:,1);
correlations = zeros(1,size(data,2));

dev_data = load(dev_input_file);
dev_targets = dev_data(:,1);

for i = 1:size(data,2);
	cor_mat = corrcoef(targets,data(:,i));
	correlations(i) = abs(cor_mat(1,2));		
end

% save the correlations mat

%sel_thresh = [.01 .1 .15 ]';
%sel_thresh = 0;

for i=sel_thresh
	selected_indices = find(correlations>sel_thresh);
	cur_train = data(:,selected_indices(2:end));
	cur_dev = dev_data(:,selected_indices(2:end));	
	model = svmtrain(targets,cur_train,'-s 3 -t 4');

	% save the model
	save_file=strcat(model_save_dir,'/model_baseline_th_',num2str(i));
	save(save_file,'model');
	dev_output = svmpredict(dev_targets,cur_dev,model);

	% save the dev outputs
	dev_save=strcat(output_save_dir,'/output_baseline_th_',num2str(i));	
	save(dev_save,'dev_output');

	corr_dev = corrcoef(dev_output,dev_lables);
	disp(corr_dev(1,2));
end
