///project_load()


var file;
file = get_open_filename("PP2 file|*.pp2", "");
if file != "" {
   part_particles_clear(sys.Sname);
   part_emitter_destroy_all(sys.Sname);
   i=0
   repeat(sys.parts){
   part_type_destroy(sys.pt[i]);
   i+=1
   }
   sys.projectname=string_replace(filename_name(file),'.pp2','')
   part_system_clear(sys.Sname)
   window_set_caption(filename_name(file)+' - '+sys.ver);
   buffer = buffer_load(file)
   project_load_buffer(buffer)
   /*
   sys.sprites = buffer_read(buffer, buffer_u32)
   i=0
   repeat(sys.sprites){
   bb = file_bin_open('temp.bin',1)
   buffer_set_bin(buffer,bb)
   file_bin_close(bb)
   sys.spp[i]=buffer_read(buffer,buffer_u8)
   sys.sp[i]=sprite_add('temp.bin',sys.spp[i],0,0,0,0)
   xx=buffer_read(buffer,buffer_f32)
   yy=buffer_read(buffer,buffer_f32)
   if sprite_exists(sys.sp[i]){
   sprite_set_offset(sys.sp[i],xx,yy);
   i+=1
   }
   }
   
   sys.parts = buffer_read(buffer, buffer_u32)
   i=0
   repeat(sys.parts){
   sys.pt[i] = part_type_create()
   j=0
   repeat(38){
   sys.ptp[i,j] = buffer_read(buffer, buffer_f32)
   j+=1
   }
   pp_set_particle(i)
   i+=1
   }
   
   sys.emits = buffer_read(buffer, buffer_u32)
   i=0
   repeat(sys.emits){
   sys.eme[i]=0
   sys.em[i] = part_emitter_create(sys.Sname)
   j=0
   repeat(8){
   sys.emp[i,j] = buffer_read(buffer, buffer_f32)
   j+=1
   }
   i+=1
   }
   buffer_save(buffer,file)
   buffer_delete(buffer)
   sys.eme[0]=1
   */
}


