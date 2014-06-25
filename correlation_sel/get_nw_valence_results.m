function get_nw_valence_results()

%cd /auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel

train_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/train_data/northwind_data_valence';
dev_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/dev_data/northwind_data_valence'
model_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/models/nw/valence/'
output_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/outputs/nw/valence/'

get_correlations(train_input_file,dev_input_file,model_save_dir,output_save_dir);
