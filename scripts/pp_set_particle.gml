///pp_set_particle(index)

var i = argument0;

if sys.ptp[i,0] mod 2 = 0{
 part_type_shape(sys.pt[i],sys.ptp[i,1]);
}
else{
 if sys.ptp[i,1] < sys.sprites and sprite_exists(sys.sp[sys.ptp[i,1]]){
  part_type_sprite(sys.pt[i],sys.sp[sys.ptp[i,1]],(sys.ptp[i,0] div 2) mod 2,(sys.ptp[i,0] div 4) mod 2,(sys.ptp[i,0] div 8) mod 2);
 }
 else{
  part_type_sprite(sys.pt[i],sprMissing,(sys.ptp[i,0] div 4) mod 2,(sys.ptp[i,0] div 8) mod 2,(sys.ptp[i,0] div 16) mod 2)
 }
}

part_type_size(sys.pt[i],sys.ptp[i,2],sys.ptp[i,3],sys.ptp[i,4],sys.ptp[i,5]);
part_type_scale(sys.pt[i],sys.ptp[i,6],sys.ptp[i,7]);
if sys.ptp[i,8] = 0{
 part_type_color1(sys.pt[i],sys.ptp[i,9]);
}
if sys.ptp[i,8] = 1{
 part_type_color2(sys.pt[i],sys.ptp[i,9],sys.ptp[i,10]);
}
if sys.ptp[i,8] = 2{
 part_type_color3(sys.pt[i],sys.ptp[i,9],sys.ptp[i,10],sys.ptp[i,11]);
}
if sys.ptp[i,12] = 0{
 part_type_alpha1(sys.pt[i],sys.ptp[i,13]);
}
if sys.ptp[i,12] = 1{
 part_type_alpha2(sys.pt[i],sys.ptp[i,13],sys.ptp[i,14]);
}
if sys.ptp[i,12] = 2{
 part_type_alpha3(sys.pt[i],sys.ptp[i,13],sys.ptp[i,14],sys.ptp[i,15]);
}
part_type_speed(sys.pt[i],sys.ptp[i,16],sys.ptp[i,17],sys.ptp[i,18],sys.ptp[i,19]);
part_type_direction(sys.pt[i],sys.ptp[i,20],sys.ptp[i,21],sys.ptp[i,22],sys.ptp[i,23]);
part_type_gravity(sys.pt[i],sys.ptp[i,24],sys.ptp[i,25]);
part_type_orientation(sys.pt[i],sys.ptp[i,26],sys.ptp[i,27],sys.ptp[i,28],sys.ptp[i,29],sys.ptp[i,30]);
part_type_blend(sys.pt[i],sys.ptp[i,31]);
part_type_life(sys.pt[i],sys.ptp[i,32],sys.ptp[i,33]);

if sys.ptp[i,35] != 0 and sys.ptp[i,34] >= 0 and sys.ptp[i,34] !=i{
 part_type_step(sys.pt[i],sys.ptp[i,35],sys.ptp[i,34]);
}
else{
 part_type_step(sys.pt[i],0,sys.ptp[i,34]);
}

if sys.ptp[i,37] != 0 and sys.ptp[i,36] >= 0 and sys.ptp[i,36] !=i{
 part_type_death(sys.pt[i],sys.ptp[i,37],sys.ptp[i,36]);
}
else{
 part_type_death(sys.pt[i],0,sys.ptp[i,36]);
}
