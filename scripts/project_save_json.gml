///project_save_json()

var i = 0, j = 0;

var map = ds_map_create();
ds_map_add(map,'sprites',sys.sprites)
i=0
repeat(sys.sprites){
sprite_save_strip(sys.sp[i],'temp.bin')
bb = file_bin_open('temp.bin',0)
//buffer_get_bin(map,bb)
file_bin_close(bb)
ds_map_add(map,'spp'+string(i),sys.spp[i])
ds_map_add(map,'spx'+string(i),sprite_get_xoffset(sys.sp[i]))
ds_map_add(map,'spy'+string(i),sprite_get_yoffset(sys.sp[i]))
i+=1
}

ds_map_add(map,'parts',sys.parts)
i=0
repeat(sys.parts){
j=0
repeat(38){
ds_map_add(map,'ptp'+string(i)+'_'+string(j),sys.ptp[i,j])
j+=1
}
i+=1
}

ds_map_add(map,'emits',sys.emits)
i=0
repeat(sys.emits){
j=0
repeat(8){
ds_map_add(map,'emp'+string(i)+'_'+string(j),sys.emp[i,j])
j+=1
}
i+=1
}

var str = json_encode(map);
ds_map_destroy(map)

return str;
