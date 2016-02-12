///buffer_get_bin(buff,bin)

var buff = argument0, bin = argument1;

buffer_write(buff,buffer_u32,file_bin_size(bin))
repeat(file_bin_size(bin)){
 buffer_write(buff,buffer_u8,file_bin_read_byte(bin))
}

