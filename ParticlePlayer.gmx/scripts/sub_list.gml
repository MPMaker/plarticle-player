///sub_list(id)

if type = 0{
 if value = 0{
  pp_copy_sprite(index)
 }
 
 if value = 1 and sys.parts>1{
  pp_delete_sprite(index)
 }
 
 if value = 2{
  pp_chage_sprite(index)
 }
}

if type = 1{
 if value = 0{
  pp_copy_particle(index)
 }
 
 if value = 1 and sys.parts>1{
  pp_delete_particle(index)
 }
 
 if value = 2{
  pp_open_particle(index)
 }
}

if type = 2{
 if value = 0{
  pp_copy_emitter(index)
 }
 
 if value = 1 and sys.emits>1{
  pp_delete_emitter(index)
 }
 
 if value = 2{
  pp_open_emitter(index)
 }
 if value = 3{
  sys.eme[index]=!sys.eme[index]
 }
}
