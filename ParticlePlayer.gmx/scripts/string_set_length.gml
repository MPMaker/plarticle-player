///string_set_length(string,fillchar,length)
var len;
len = string_length(argument0);
return string_repeat(argument1, argument2 - len) + argument0
