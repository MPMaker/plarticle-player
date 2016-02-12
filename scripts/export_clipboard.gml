///export_clipboard()

var str='', i=0 ,ss;

str +='//init particle'

repeat(sys.parts){
 str += '
pp_particle' + string(i) + ' = part_type_create()';
 if sys.ptp[i,0] mod 2 = 0{
  str +='
part_type_shape(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,1],3,4)+')';
 }
 else{
  str +='
part_type_sprite(pp_particle'+string(i)+',sprite'+string_format_ext(sys.ptp[i,1],3,4)+','+string_format_ext((sys.ptp[i,0] div 2) mod 2,3,4)
  +','+string_format_ext((sys.ptp[i,0] div 4) mod 2,3,4)+','+string_format_ext((sys.ptp[i,0] div 8) mod 2,3,4)+')'
 }
 str +='
part_type_size(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,2],3,4)+','+string_format_ext(sys.ptp[i,3],3,4)
 +','+string_format_ext(sys.ptp[i,4],3,4)+','+string_format_ext(sys.ptp[i,5],3,4)+')';
 str +='
part_type_scale(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,6],3,4)+','+string_format_ext(sys.ptp[i,7],3,4)+')';
 if sys.ptp[i,8] = 0{
  str +='
part_type_color1(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,9],3,4)+')';
 }
 if sys.ptp[i,8] = 1{
  str +='
part_type_color2(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,9],3,4)+','+string_format_ext(sys.ptp[i,10],3,4)+')';
 }
 if sys.ptp[i,8] = 2{
  str +='
part_type_color3(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,9],3,4)+','+string_format_ext(sys.ptp[i,10],3,4)+
  ','+string_format_ext(sys.ptp[i,11],3,4)+')';
 }
 if sys.ptp[i,12] = 0{
  str +='
part_type_alpha1(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,13],3,4)+')';
 }
 if sys.ptp[i,12] = 1{
  str +='
part_type_alpha2(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,13],3,4)+','+string_format_ext(sys.ptp[i,14],3,4)+')';
 }
 if sys.ptp[i,12] = 2{
  str +='
part_type_alpha3(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,13],3,4)+','+string_format_ext(sys.ptp[i,14],3,4)+
  ','+string_format_ext(sys.ptp[i,15],3,4)+')';
 }
 str +='
part_type_speed(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,16],3,4)+','+string_format_ext(sys.ptp[i,17],3,4)
 +','+string_format_ext(sys.ptp[i,18],3,4)+','+string_format_ext(sys.ptp[i,19],3,4)+')';
 str +='
part_type_direction(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,20],3,4)+','+string_format_ext(sys.ptp[i,21],3,4)
 +','+string_format_ext(sys.ptp[i,22],3,4)+','+string_format_ext(sys.ptp[i,23],3,4)+')';
 str +='
part_type_gravity(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,24],3,4)+','+string_format_ext(sys.ptp[i,25],3,4)+')';
 str +='
part_type_orientation(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,26],3,4)+','+string_format_ext(sys.ptp[i,27],3,4)
 +','+string_format_ext(sys.ptp[i,28],3,4)+','+string_format_ext(sys.ptp[i,29],3,4)+','+string_format_ext(sys.ptp[i,30],3,4)+')';
 str +='
part_type_blend(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,31],3,4)+')';
 str +='
part_type_life(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,32],3,4)+','+string_format_ext(sys.ptp[i,33],3,4)+')';
 if sys.ptp[i,35] != 0 and sys.ptp[i,34] >= 0{
  str +='
part_type_step(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,35],3,4)+',pp_particle'+string_format_ext(sys.ptp[i,34],3,4)+')';
 }
 
 if sys.ptp[i,37] != 0 and sys.ptp[i,36] >= 0{
  str +='
part_type_death(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,37],3,4)+',pp_particle'+string_format_ext(sys.ptp[i,36],3,4)+')';
 }
 i+=1
}

str +='
//init emitter'

i=0
repeat(sys.emits){
 str += '
pp_emitter' + string(i) + ' = part_emitter_create(Sname)';
 str +='
part_emitter_region(Sname,pp_emitter'+string(i)+',x - '+string_format_ext(sys.emp[i,1],3,4)+',x + '+string_format_ext(sys.emp[i,2],3,4)
 +',y - '+string_format_ext(sys.emp[i,3],3,4)+',y +'+string_format_ext(sys.emp[i,4],3,4)+','+string_format_ext(sys.emp[i,5],3,4)+
 ','+string_format_ext(sys.emp[i,6],3,4)+')';
 i+=1
}



str = string_replace_all(str,'#','
')

clipboard_set_text(str)

if os_type!=os_windows or os_browser!=browser_not_a_browser{
 get_string_async('text',str)
}

if clipboard_has_text(){

 ///ui_show_popup(title,caption,button0,[button1],[button2])
 var _target = id;
 var _popup = noone;
 
 with (zui_main()) {
  var _black = zui_create(0, 0, objUIBlack, -5000);
 
 
  with ( zui_create(__width * 0.5, __height * 0.5, objUIPopup, -5001)) {
   zui_set_size(320, 160);
   
   black = _black;
   target = _target;
   
   with (zui_create(0, 0, objUIWindowCaption)) {
    caption = '';
    draggable = 1;
   }
   
   draw_set_font(fntMain);
   var swidth = round(string_width('Copied to clipboard') / 2) * 2;
   var sheight = round(string_height('Copied to clipboard') / 2) * 2;
   
   with (zui_create(round(zui_get_width() * 0.5), 50, objUILabel)) {
    halign = 1;
    valign = 0;
    caption = 'Copied to clipboard';
    color = $ffffff;
    
    zui_set_anchor(0, 0);
    zui_set_size(swidth, sheight);
   }
   
   
   
    with (zui_create(zui_get_width() * 0.5 , zui_get_height() - 26, objUIButton)) {
     zui_set_size(88, 28);
     caption = 'ok';
     callback = ui_popup_close
     black = _black
   }
  }
 }
}
