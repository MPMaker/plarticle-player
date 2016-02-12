///pp_delete_particle(index)

var i=0, aa=index, j;




repeat(sys.parts){
 if sys.ptp[i,34] = aa{sys.ptp[i,34] = -1}
 if sys.ptp[i,36] = aa{sys.ptp[i,36] = -1}
 if sys.ptp[i,34] > aa{sys.ptp[i,34] -= 1}
 if sys.ptp[i,36] > aa{sys.ptp[i,36] -= 1}
 i+=1
}

i=0
repeat(sys.emits){
 if sys.emp[i,0] = aa{sys.emp[i,0] = 0}
 if sys.emp[i,0] > aa{sys.emp[i,0] -= 1}
 i+=1
}

if sys.parts>0{
i=aa
repeat(sys.parts-aa-1){
 j=0
 repeat(38){
 sys.ptp[i,j]=sys.ptp[i+1,j]
 j+=1
 }
 pp_set_particle(i)
 i+=1
}
}

part_type_destroy(sys.pt[sys.parts-1])

sys.parts -= 1
