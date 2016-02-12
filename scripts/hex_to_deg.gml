///hex_to_deg(str)

var str=argument0, deg=0, i=1, ss='0', vv=0;


i=0
repeat(string_length(str)){
ss = string_char_at(str,string_length(str)-i)
show_debug_message(ss)
if ss = '1' {vv=1}
if ss = '2' {vv=2}
if ss = '3' {vv=3}
if ss = '4' {vv=4}
if ss = '5' {vv=5}
if ss = '6' {vv=6}
if ss = '7' {vv=7}
if ss = '8' {vv=8}
if ss = '9' {vv=9}
if ss = '0' {vv=0}
if ss = 'a' {vv=10}
if ss = 'b' {vv=11}
if ss = 'c' {vv=12}
if ss = 'd' {vv=13}
if ss = 'e' {vv=14}
if ss = 'f' {vv=15}
deg+=vv*power(16,i)
i+=1
}

return deg;
