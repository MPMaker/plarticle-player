///pp_open_emitter(index)


var i=argument0, cc = 0;

with(objUIEmit){
 if __index = i{
  cc+= 1
 }
}

if cc = 1{
 with(objUIEmit){
  if __index = i{
   zui_destroy()
  }
 }
 cc = 0
}

if cc = 0{
 with(zui_main()){
  with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objUIEmit, -1)) {
   zui_set_size(480, 320);
   __index = i
   var origin = id;
   var j = 0;
   repeat(8){
    ptp[j] = sys.emp[i,j]
    j += 1
   }
   index = 0
   
   with (zui_create(0, 0, objUIWindowCaption)) {
    caption = "Emitter "+string(i);
    draggable = 1;
    with (zui_create(480, 0, objUIButton)) {
        zui_set_anchor(1, 0);
        zui_set_size(24, 24);
        caption = "X";
        target = origin
        callback = zui_origin_destroy;
    }
   }

   
   with (zui_create(8, 64, objUILabel)) {
    halign = 0
    caption = "Connect Particle"
   }
   with (zui_create(114, 64, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    __index = 0
    val1 = 0
    caption = 'Particle'
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(184, 64, objUILabel)) {
    halign = 0
    caption = "Number"
   }
   with (zui_create(238, 64, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 7
    values = string_format_ext(sys.emp[i,7], 3, 0)
   }
   
   with (zui_create(8, 88, objUILabel)) {
    halign = 0
    caption = "Region"
   }
   with (zui_create(68, 88, objUILabel)) {
    halign = 0
    caption = "x1"
   }
   with (zui_create(108, 88, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 1
    values = string_format_ext(sys.emp[i,1], 3, 2)
   }
   with (zui_create(168, 88, objUILabel)) {
    halign = 0
    caption = "x2"
   }
   with (zui_create(208, 88, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 2
    values = string_format_ext(sys.emp[i,2], 3, 2)
   }
   with (zui_create(268, 88, objUILabel)) {
    halign = 0
    caption = "y1"
   }
   with (zui_create(308, 88, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 3
    values = string_format_ext(sys.emp[i,3], 3, 2)
   }
   with (zui_create(368, 88, objUILabel)) {
    halign = 0
    caption = "y2"
   }
   with (zui_create(408, 88, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 4
    values = string_format_ext(sys.emp[i,4], 3, 2)
   }

   with (zui_create(68, 112, objUILabel)) {
    halign = 0
    caption = "Shape"
   }
   with (zui_create(124, 112, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    __index = 5
    val1 = 5
    caption = 'shape'
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(198, 112, objUILabel)) {
    halign = 0
    caption = "Distribution"
   }
   with (zui_create(274, 112, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    __index = 6
    val1 = 6
    caption = 'type'
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   
  }
 }
}
