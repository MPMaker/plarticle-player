///buffer_set_bin(buff,bin)

var buff = argument0, bin = argument1;


repeat(buffer_read(buff,buffer_u32)){
 file_bin_write_byte(bin,buffer_read(buff,buffer_u8))
}

