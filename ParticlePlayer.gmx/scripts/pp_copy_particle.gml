///pp_copy_particle(index)

var i=0, aa=index;

sys.pt[sys.parts] = part_type_create()

repeat(50){
 sys.ptp[sys.parts,i]=sys.ptp[aa,i]
 i+=1
}

pp_set_particle(sys.parts)

sys.parts += 1
