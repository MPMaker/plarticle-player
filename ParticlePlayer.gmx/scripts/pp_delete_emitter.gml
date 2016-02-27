///pp_delete_emitter(index)

var i=0, aa=index, j;








if sys.emits>0{
i=aa
repeat(sys.emits-aa-1){
 j=0
 repeat(8){
 sys.emp[i,j]=sys.emp[i+1,j]
 sys.eme[i]=sys.eme[i+1]
 j+=1
 }
 part_emitter_region(sys.Sname,sys.em[i],sys.emp[i,1],sys.emp[i,2]
 ,sys.emp[i,3],sys.emp[i,4],sys.emp[i,5],sys.emp[i,6]);
 i+=1
}
}

part_type_destroy(sys.em[sys.emits-1])

sys.emits -= 1
