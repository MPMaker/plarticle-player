///pp_add_sprite()

var file;
file = get_open_filename("png file|*.png", "");
if file != ""
{
   sys.spp[sys.sprites]=0
   if string_count('_strip',filename_name(file))=1{
   sys.spp[sys.sprites]=real(string_digits(string_delete(filename_name(file),1,string_pos('_strip',filename_name(file))+5)))}
   sys.sp[sys.sprites]=sprite_add(file,sys.spp[sys.sprites],0,0,0,0)
   if sprite_exists(sys.sp[sys.sprites]){
   sprite_set_offset(sys.sp[sys.sprites],sprite_get_width(sys.sp[sys.sprites])/2,sprite_get_height(sys.sp[sys.sprites])/2);
   }
   sys.sprites +=1
}
