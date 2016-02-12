///project_load_json(str)

var str = argument0;

var map = json_decode(str);

if map >= 0 {

 sys.sprites = ds_map_find_value(map,'sprites')
 i=0
 repeat(sys.sprites){
 bb = file_bin_open('temp.bin',1)
 //buffer_set_bin(buffer,bb)
 file_bin_close(bb)
 sys.spp[i]=ds_map_find_value(map,'spp'+string(i))
 sys.sp[i]=sprite_add('temp.bin',sys.spp[i],0,0,0,0)
 xx=ds_map_find_value(map,'spx'+string(i))
 yy=ds_map_find_value(map,'spy'+string(i))
 if sprite_exists(sys.sp[i]){
 sprite_set_offset(sys.sp[i],xx,yy);
 i+=1
 }
 }
 
 sys.parts = ds_map_find_value(map,'parts')
 i=0
 repeat(sys.parts){
 sys.pt[i] = part_type_create()
 j=0
 repeat(38){
 sys.ptp[i,j] = ds_map_find_value(map,'ptp'+string(i)+'_'+string(j))
 j+=1
 }
 pp_set_particle(i)
 i+=1
 }
 
 sys.emits = ds_map_find_value(map,'emits')
 i=0
 repeat(sys.emits){
 sys.eme[i]=0
 sys.em[i] = part_emitter_create(sys.Sname)
 sys.eme[i]=1
 j=0
 repeat(8){
 sys.emp[i,j] = ds_map_find_value(map,'emp'+string(i)+'_'+string(j))
 j+=1
 }
 i+=1
 }
 
 ds_map_destroy(map)
}


