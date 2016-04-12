///pp_add_background()

var file;
file = get_open_filename("png file|*.png", "");
if file != ""
{
   if background_exists(sys.backg){
    background_delete(sys.backg)
   }
   sys.backg=background_add(file,0,0)
}
