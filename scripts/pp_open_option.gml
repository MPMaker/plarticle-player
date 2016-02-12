///pp_open_option(index)


var i=argument0, cc = 0;


 with(objUIOption){
  if __index = i{
   zui_destroy()
  }
 }

 with(zui_main()){
  with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objUIOption, -1)) {
   zui_set_size(480, 320);
   __index = i
   var origin = id;
   index = 0
   ptp[0]=room_speed
   ptp[1]=background_colour
   
   with (zui_create(0, 0, objUIWindowCaption)) {
    caption = "Option"
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
    caption = "Room speed"
   }
   with (zui_create(114, 64, objUIGetNo)) {
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 0
    values = string(room_speed)
   }
   
   with (zui_create(188, 64, objUILabel)) {
    halign = 0
    caption = "Background color"
    index = 0
   }
   with (zui_create(308, 64, objUIPartColor)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    val1 = 1
    value = background_colour
    zui_set_size(40, 24) 
    callback = pp_callback_pop2;
   }
   with (zui_create(8, 96, objUIButton)) {
    zui_set_anchor(0, 0.5);
    zui_set_size(128, 24);
    caption = "Background change";
    callback = pp_add_background;
   }
   with (zui_create(146, 96, objUILabel)) {
    halign = 0
    caption = "Stretch"
    index = 0
   }
   with (zui_create(206, 96, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    callback = pp_set_value_bgr;
    value = sys.backs
   }
   with (zui_create(8, 128, objUIButton)) {
    zui_set_anchor(0, 0.5);
    zui_set_size(128, 24);
    caption = "Background remove";
    callback = pp_remove_background;
   }
   
  }
 }
