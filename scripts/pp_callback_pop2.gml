///pp_callback_pop2

var xx=__dx - __ax * __sx, yy=__dy - __ay * __sy, pp=__parent, vv = val1;

with(objUIPalette){
 if target=pp and val1 = vv{
  zui_destroy()
 }

}


with (zui_main()) {

 _popup = zui_create(__width * 0.5, __height * 0.5, objUIPalette, -5001);

 with (_popup) {
 var p2p = id
  target = pp
  black = -10
  val1 = vv
  value = pp.ptp[vv]
  hue = colour_get_hue(value);
  sat = colour_get_saturation(value);
  val = colour_get_value(value);
  callback = pp_set_value;
  
  with (zui_create(0, 0, objUIWindowCaption)) {
   caption = 'particle'+string(pp.__index)+' Color'
   if vv = 9 {caption+='1'}
   if vv = 10 {caption+='2'}
   if vv = 11 {caption+='3'}
   draggable = 1;
  }
  
   with (zui_create(64, 280, objUIButton)) {
    zui_set_anchor(0, 0);
    zui_set_size(60, 24);
    caption = "Ok";
    black = -10
    callback = ui_popup_close;
   }
   with (zui_create(24, 200, objUIGetHex)) {
    index = -1
    zui_set_anchor(0,0)
    target = p2p
    callback = -1
    zui_set_size(80, 24);
    val1 = 2
    values = deg_to_hex(pp.ptp[vv])
   }

 }
}
