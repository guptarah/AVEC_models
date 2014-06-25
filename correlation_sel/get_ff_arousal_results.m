function get_ff_arousal_results()

%cd /auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel

train_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/train_data/freeform_data_arousal';
dev_input_file='/auto/rcf-proj/mv/guptarah/AVEC/scripts/data_preperation/dev_data/freeform_data_arousal'
model_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/models/ff/arousal/'
output_save_dir='/auto/rcf-proj/mv/guptarah/AVEC/scripts/correlation_sel/outputs/ff/arousal/'

get_correlations(train_input_file,dev_input_file,model_save_dir,output_save_dir);
