///pp_delete_sprite(index)

var i=0, aa=index;

sprite_delete(sys.sp[aa])

repeat(sys.parts){
 if sys.ptp[i,0] mod 2 = 1{
  if sys.ptp[i,1] = aa{sys.ptp[i,1] = -1}
  if sys.ptp[i,1] > aa{sys.ptp[i,1] -= 1}
 }
 i+=1
}

if sys.sprites>0{
i=aa
repeat(sys.sprites-aa-1){
 sys.sp[i] = sys.sp[i+1]
 sys.spp[i] = sys.spp[i+1]
 i+=1
}
}



sys.sprites -= 1
