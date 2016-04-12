///pp_save_sprite(sprite)

var file, str, spr;
spr=argument0
str=sys.projectname
if sprite_exists(spr){
 if sprite_get_number(spr)>1{
  str+="_strip"+string(sprite_get_number(spr))
 }
 file = get_save_filename("png file|*.png",str);
 if file != ""
 {
  sprite_save_strip(spr,file)
 }
 sprite_delete(spr)
}
