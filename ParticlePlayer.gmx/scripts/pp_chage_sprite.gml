///pp_chage_sprite(index)

var file;
file = get_open_filename("png file|*.png", "");
if file != ""
{
   sys.spp[argument0]=0
   if string_count('_strip',filename_name(file))=1{
   sys.spp[argument0]=real(string_digits(string_delete(filename_name(file),1,string_pos('_strip',filename_name(file))+5)))}
   sprite_replace(sys.sp[argument0],file,sys.spp[argument0],0,0,0,0)
   if sprite_exists(sys.sp[argument0]){
   sprite_set_offset(sys.sp[argument0],sprite_get_width(sys.sp[argument0])/2,sprite_get_height(sys.sp[argument0])/2);
   }
}
