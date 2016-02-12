///pp_callback_pop3

var pp = id, ll = line;

if val1 = 0{
 with(zui_main()){
  with (zui_create(other.xx,other.yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=3
   val1=12
   index = ll
   type = 0
   target = pp
   callback = sub_list;
    captions[0]="Copy"
    captions[1]="Delete"
    captions[2]="Edit"
  }
 }
}

if val1 = 1{
 with(zui_main()){
  with (zui_create(other.xx,other.yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=3
   val1=12
   index = ll
   target = pp
   type = 1
   callback = sub_list;
    captions[0]="Copy"
    captions[1]="Delete"
    captions[2]="Edit"
  }
 }
}

if val1 = 2{
 with(zui_main()){
  with (zui_create(other.xx,other.yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=4
   val1=12
   index = ll
   target = pp
   type = 2
   callback = sub_list;
    captions[0]="Copy"
    captions[1]="Delete"
    captions[2]="Edit"
    captions[3]="Enable/Disable"
  }
 }
}
