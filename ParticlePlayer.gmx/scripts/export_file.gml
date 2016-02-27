///export_file()

var str='', i=0 ,ss;

str = pp_to_text()




var file;
file = get_save_filename("txt file|*.txt", "");
if file != "" {
 ff = file_text_open_write(file)
 file_text_write_string(ff,str)
 file_text_close(ff)
}
