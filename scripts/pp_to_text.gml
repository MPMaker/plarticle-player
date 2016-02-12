///pp_to_text()

var str='', i=0 ,ss;

str +='//init particle'

repeat(sys.parts){
 str += '
pp_particle' + string(i) + ' = part_type_create()';
 if sys.ptp[i,0] mod 2 = 0{
  if sys.ptp[i,1] != pt_shape_pixel {
   str +='
part_type_shape(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,1],3,4)+')';
  }
 }
 else{
  str +='
part_type_sprite(pp_particle'+string(i)+',sprite'+string_format_ext(sys.ptp[i,1],3,4)+','+string_format_ext((sys.ptp[i,0] div 2) mod 2,3,4)
  +','+string_format_ext((sys.ptp[i,0] div 4) mod 2,3,4)+','+string_format_ext((sys.ptp[i,0] div 8) mod 2,3,4)+')'
 }
 
 if sys.ptp[i,2] != 1 or sys.ptp[i,3] != 1 or sys.ptp[i,4] != 0 or sys.ptp[i,5] != 0 {
  str +='
part_type_size(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,2],3,4)+','+string_format_ext(sys.ptp[i,3],3,4)
 +','+string_format_ext(sys.ptp[i,4],3,4)+','+string_format_ext(sys.ptp[i,5],3,4)+')';
 }
 if sys.ptp[i,6] != 1 or sys.ptp[i,7] != 1 {
  str +='
part_type_scale(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,6],3,4)+','+string_format_ext(sys.ptp[i,7],3,4)+')';
 }
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
if sys.ptp[i,16] != 1 or sys.ptp[i,17] != 1 or sys.ptp[i,18] != 0 or sys.ptp[i,19] != 0 {
 str +='
part_type_speed(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,16],3,4)+','+string_format_ext(sys.ptp[i,17],3,4)
 +','+string_format_ext(sys.ptp[i,18],3,4)+','+string_format_ext(sys.ptp[i,19],3,4)+')';
}
if sys.ptp[i,20] != 0 or sys.ptp[i,21] != 0 or sys.ptp[i,22] != 0 or sys.ptp[i,23] != 0 {
 str +='
part_type_direction(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,20],3,4)+','+string_format_ext(sys.ptp[i,21],3,4)
 +','+string_format_ext(sys.ptp[i,22],3,4)+','+string_format_ext(sys.ptp[i,23],3,4)+')';
}
if sys.ptp[i,24] != 0 {
 str +='
part_type_gravity(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,24],3,4)+','+string_format_ext(sys.ptp[i,25],3,4)+')';
}
if sys.ptp[i,26] != 0 or sys.ptp[i,27] != 0 or sys.ptp[i,28] != 0 or sys.ptp[i,29] != 0 or sys.ptp[i,30] != 0 {
 str +='
part_type_orientation(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,26],3,4)+','+string_format_ext(sys.ptp[i,27],3,4)
 +','+string_format_ext(sys.ptp[i,28],3,4)+','+string_format_ext(sys.ptp[i,29],3,4)+','+string_format_ext(sys.ptp[i,30],3,4)+')';
}
if sys.ptp[i,31] != 0 {
 str +='
part_type_blend(pp_particle'+string(i)+','+string_format_ext(sys.ptp[i,31],3,4)+')';
}
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

return str;
