///pp_game_re()
 part_particles_clear(sys.Sname);
   part_emitter_destroy_all(sys.Sname);
   i=0
   repeat(sys.parts){
   part_type_destroy(sys.pt[i]);
   i+=1
   }
   part_system_clear(sys.Sname)
sys.projectname='noname'

sys.backg = -1
sys.backs = 0
sys.sprites=0
sys.parts=0
sys.emits=0
sys.cemit=0
sys.record=0
sys.recd=0
sys.recspr=-10
sys.surf=-10
project_save_web()
//pp_add_particle()
//pp_add_emitter()

game_restart()
