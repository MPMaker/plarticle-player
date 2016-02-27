///pp_add_emitter()


sys.em[sys.emits] = part_emitter_create(sys.Sname)
sys.emp[sys.emits,0] = 0
sys.emp[sys.emits,1] = 0
sys.emp[sys.emits,2] = 0
sys.emp[sys.emits,3] = 0
sys.emp[sys.emits,4] = 0
sys.emp[sys.emits,5] = 0
sys.emp[sys.emits,6] = 0
sys.emp[sys.emits,7] = 5

part_emitter_region(sys.Sname,sys.em[sys.emits],sys.emp[sys.emits,1],sys.emp[sys.emits,2]
,sys.emp[sys.emits,3],sys.emp[sys.emits,4],sys.emp[sys.emits,5],sys.emp[sys.emits,6]);

sys.eme[sys.emits]=1
sys.emits += 1

project_save_web()
