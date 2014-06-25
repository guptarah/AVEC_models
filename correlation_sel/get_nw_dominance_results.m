function get_ff_dominance_results()

%cd /auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel

train_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/train_data/northwind_data_dominance';
dev_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/dev_data/northwind_data_dominance'
model_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/models/nw/dominance/'
output_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/outputs/nw/dominance/'

get_correlations(train_input_file,dev_input_file,model_save_dir,output_save_dir);
