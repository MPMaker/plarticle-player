///string_format_ext(val, tot, dec)

var vv=argument0, tt=argument1, dd=argument2, i;

i = dd
repeat(dd){
 if floor(vv*power(10,i - 1)) != vv*power(10,i - 1){
  return string_format(vv, tt, i);
 }
 i-=1
}

return string(vv);
