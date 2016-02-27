///pp_copy_emitter(index)

var i=0, aa=index;

sys.em[sys.emits] = part_emitter_create(sys.Sname)

repeat(8){
 sys.emp[sys.parts,i]=sys.emp[aa,i]
 i+=1
}

part_emitter_region(sys.Sname,sys.em[sys.emits],sys.emp[sys.emits,1],sys.emp[sys.emits,2]
,sys.emp[sys.emits,3],sys.emp[sys.emits,4],sys.emp[sys.emits,5],sys.emp[sys.emits,6]);

sys.eme[sys.emits]=0
sys.emits += 1
