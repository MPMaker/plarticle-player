///deg_to_hex(val)

var str='', deg=argument0, i=0, dd=0, ss='';


repeat(6){
if i=0 {dd=colour_get_blue(deg) div 16}
if i=1 {dd=colour_get_blue(deg) mod 16}
if i=2 {dd=colour_get_green(deg) div 16}
if i=3 {dd=colour_get_green(deg) mod 16}
if i=4 {dd=colour_get_red(deg) div 16}
if i=5 {dd=colour_get_red(deg) mod 16}
if dd< 10{ss= string(dd)}
if dd = 10 {ss='a'}
if dd = 11 {ss='b'}
if dd = 12 {ss='c'}
if dd = 13 {ss='d'}
if dd = 14 {ss='e'}
if dd = 15 {ss='f'}
str+=ss
i+=1
}

return str;
