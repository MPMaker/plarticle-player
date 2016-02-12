with (zui_main()){
 popup_exit = ui_show_popup("Exit", "Are you sure?", "OK", "Cancel");
 (popup_exit.button[0]).callback = pp_game_end;
 }
