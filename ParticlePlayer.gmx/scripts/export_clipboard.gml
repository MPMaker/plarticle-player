///export_clipboard()

var str = '', i = 0 , ss;

str = pp_to_text()




clipboard_set_text(str)

if os_type!=os_windows or os_browser!=browser_not_a_browser{
 get_string_async('text',str)
}

if clipboard_has_text(){

 ///ui_show_popup(title,caption,button0,[button1],[button2])
 var _target = id;
 var _popup = noone;
 
 with (zui_main()) {
  var _black = zui_create(0, 0, objUIBlack, -5000);
 
 
  with ( zui_create(__width * 0.5, __height * 0.5, objUIPopup, -5001)) {
   zui_set_size(320, 160);
   
   black = _black;
   target = _target;
   
   with (zui_create(0, 0, objUIWindowCaption)) {
    caption = '';
    draggable = 1;
   }
   
   draw_set_font(fntMain);
   var swidth = round(string_width('Copied to clipboard') / 2) * 2;
   var sheight = round(string_height('Copied to clipboard') / 2) * 2;
   
   with (zui_create(round(zui_get_width() * 0.5), 50, objUILabel)) {
    halign = 1;
    valign = 0;
    caption = 'Copied to clipboard';
    color = $ffffff;
    
    zui_set_anchor(0, 0);
    zui_set_size(swidth, sheight);
   }
   
   
   
    with (zui_create(zui_get_width() * 0.5 , zui_get_height() - 26, objUIButton)) {
     zui_set_size(88, 28);
     caption = 'ok';
     callback = ui_popup_close
     black = _black
   }
  }
 }
}
