InitGlobalvars()
InitVars()
if parameter_count() save_dir=filename_dir(parameter_string(1))
else save_dir=registry_read_string_ext('elpAudio','work_dir')

if !directory_exists(save_dir) no_file=1

ThemeLoad()
