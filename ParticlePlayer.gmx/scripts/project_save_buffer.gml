///project_save_buffer()

var i = 0, j = 0;

var buffer = buffer_create(256,buffer_grow,1);
buffer_write(buffer, buffer_s32, sys.format_ver)
buffer_write(buffer, buffer_u32, sys.sprites)
i=0
repeat(sys.sprites){
sprite_save_strip(sys.sp[i],'temp.bin')
bb = file_bin_open('temp.bin',0)
buffer_get_bin(buffer,bb)
file_bin_close(bb)
buffer_write(buffer, buffer_u8, sys.spp[i])
buffer_write(buffer, buffer_f32, sprite_get_xoffset(sys.sp[i]))
buffer_write(buffer, buffer_f32, sprite_get_yoffset(sys.sp[i]))
i+=1
}

buffer_write(buffer, buffer_u32, sys.parts)
i=0
repeat(sys.parts){
j=0
repeat(50){
buffer_write(buffer, buffer_f32, sys.ptp[i,j])
j+=1
}
i+=1
}

buffer_write(buffer, buffer_u32, sys.emits)
i=0
repeat(sys.emits){
j=0
repeat(8){
buffer_write(buffer, buffer_f32, sys.emp[i,j])
j+=1
}
i+=1
}

return buffer;
