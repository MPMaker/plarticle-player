///ui_show_popup(title,caption,button0,[button1],[button2])
var _target = id;
var _popup = noone;

with (zui_main()) {
 var _black = zui_create(0, 0, objUIBlack, -5000);

 _popup = zui_create(__width * 0.5, __height * 0.5, objUIPopup, -5001);

 with (_popup) {
  zui_set_size(256, 98);
  
  black = _black;
  target = _target;
  
  with (zui_create(0, 0, objUIWindowCaption)) {
   caption = argument[0];
   draggable = 1;
  }
  
  draw_set_font(fntMain);
  var swidth = round(string_width(argument[1]) / 2) * 2;
  var sheight = round(string_height(argument[1]) / 2) * 2;
  
  with (zui_create(round(zui_get_width() * 0.5), 26, objUILabel)) {
   halign = 1;
   valign = 0;
   caption = argument[1];
   color = $ffffff;
   
   zui_set_anchor(0, 0);
   zui_set_size(swidth, sheight);
  }
  
  __height += sheight;
  
  var buttons = argument_count - 2;
  
  for (var i = 0; i < buttons; ++i) {
   button[i] = zui_create(zui_get_width() * 0.5 + (i - (buttons - 1) * 0.5) * 96, zui_get_height() - 26, objUIButton);
   with (button[i]) {
    zui_set_size(88, 28);
    caption = argument[i + 2];
    callback = ui_popup_close
    black = _black
   }
  }
 }
}

return _popup;
