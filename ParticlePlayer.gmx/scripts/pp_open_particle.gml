///pp_open_particle(index)


var i=argument0, cc = 0;

with(objUIPart){
 if __index = i{
  cc+= 1
 }
}

if cc = 1{
 with(objUIPart){
  if __index = i{
   zui_destroy()
  }
 }
 cc = 0
}

if cc = 0{
 with(zui_main()){
  with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objUIPart, -1)) {
   zui_set_size(480, 320);
   __index = i
   var origin = id;
   var j = 0;
   repeat(41){
    ptp[j] = sys.ptp[i,j]
    j += 1
   }
   index = 0
   
   with (zui_create(0, 0, objUIWindowCaption)) {
    caption = "Particle "+string(i);
    draggable = 1;
    with (zui_create(480, 0, objUIButton)) {
        zui_set_anchor(1, 0);
        zui_set_size(24, 24);
        caption = "X";
        target = origin
        callback = zui_origin_destroy;
    }
   }
   with (zui_create(0, 24, objUITab)) {
    caption = "Image";
    index = 0
    zui_set_size(60, 24)
    zui_set_anchor(0,0)
   }
   with (zui_create(60, 24, objUITab)) {
    caption = "Move";
    index = 1
    zui_set_size(60, 24)
    zui_set_anchor(0,0)
   }
   with (zui_create(120, 24, objUITab)) {
    caption = "Life";
    index = 2
    zui_set_size(60, 24) 
    zui_set_anchor(0,0)
   }
   
   with (zui_create(88, 64, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 0
    val2 = 0
    value = sys.ptp[i,0] mod 2
   }
   with (zui_create(8, 64, objUILabel)) {
    halign = 0
    caption = "Use Sprite"
    index = 0
   }
   with (zui_create(104, 64, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    __index = 1
    val1 = 1
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(236, 64, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value_or;
    val1 = 0
    val2 = 2
    value = (sys.ptp[i,0] div 2) mod 2
   }
   with (zui_create(172, 64, objUILabel)) {
    val1 = 0
    val2 = 2
    halign = 0
    caption = "Animate"
    index = 0
   }
   with (zui_create(312, 64, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value_or;
    val1 = 0
    val2 = 4
    value = (sys.ptp[i,0] div 4) mod 2
   }
   with (zui_create(252, 64, objUILabel)) {
    val1 = 0
    val2 = 4
    halign = 0
    caption = "stretch"
    index = 0
   }
   with (zui_create(388, 64, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value_or;
    val1 = 0
    val2 = 8
    value = (sys.ptp[i,0] div 8) mod 2
   }
   with (zui_create(328, 64, objUILabel)) {
    val1 = 0
    val2 = 8
    halign = 0
    caption = "random"
    index = 0
   }
   
   with (zui_create(8, 88, objUILabel)) {
    halign = 0
    caption = "Size"
    index = 0
   }
   with (zui_create(48, 88, objUILabel)) {
    halign = 0
    caption = "Min"
    index = 0
   }
   with (zui_create(78, 88, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 2
    values = string_format_ext(sys.ptp[i,2], 3, 4)
   }
   with (zui_create(132, 88, objUILabel)) {
    halign = 0
    caption = "Max"
    index = 0
   }
   with (zui_create(162, 88, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 3
    values = string_format_ext(sys.ptp[i,3], 3, 4)
   }
   with (zui_create(216, 88, objUILabel)) {
    halign = 0
    caption = "Increase"
    index = 0
   }
   with (zui_create(272, 88, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 4
    values = string_format_ext(sys.ptp[i,4], 3, 4)
   }
   with (zui_create(326, 88, objUILabel)) {
    halign = 0
    caption = "Wiggle"
    index = 0
   }
   with (zui_create(372, 88, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 5
    values = string_format_ext(sys.ptp[i,5], 3, 4)
   }
   
   with (zui_create(8, 112, objUILabel)) {
    halign = 0
    caption = "Scale"
    index = 0
   }
   with (zui_create(48, 112, objUILabel)) {
    halign = 0
    caption = "X"
    index = 0
   }
   with (zui_create(78, 112, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 6
    values = string_format_ext(sys.ptp[i,6], 3, 4)
   }
   with (zui_create(132, 112, objUILabel)) {
    halign = 0
    caption = "Y"
    index = 0
   }
   with (zui_create(162, 112, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 7
    values = string_format_ext(sys.ptp[i,7], 3, 4)
   }
   
   with (zui_create(8, 136, objUILabel)) {
    halign = 0
    caption = "Color"
    index = 0
   }
   with (zui_create(68, 136, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    __index = 8
    val1 = 8
    def = 1
    caption = 'color'
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(148, 136, objUILabel)) {
    halign = 0
    caption = "1"
    val1 = 9
    index = 0
   }
   with (zui_create(168, 136, objUIPartColor)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    val1 = 9
    value = sys.ptp[i,9]
    zui_set_size(40, 24) 
    callback = pp_callback_pop2;
   }
   with (zui_create(222, 136, objUILabel)) {
    halign = 0
    caption = "2"
    val1 = 10
    index = 0
   }
   with (zui_create(242, 136, objUIPartColor)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    val1 = 10
    value = sys.ptp[i,10]
    zui_set_size(40, 24) 
    callback = pp_callback_pop2;
   }
   with (zui_create(302, 136, objUILabel)) {
    halign = 0
    caption = "3"
    val1 = 11
    index = 0
   }
   with (zui_create(322, 136, objUIPartColor)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    val1 = 11
    value = sys.ptp[i,11]
    zui_set_size(40, 24) 
    callback = pp_callback_pop2;
   }
   
   with (zui_create(148, 160, objUILabel)) {
    halign = 0
    caption = "max"
    val1 = 38
    index = 0
   }
   with (zui_create(168, 136, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 9
    values = string_format_ext(sys.ptp[i,9], 3, 4)
   }
   with (zui_create(168, 160, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 38
    values = string_format_ext(sys.ptp[i,38], 3, 4)
   }
   with (zui_create(222, 160, objUILabel)) {
    halign = 0
    caption = "max"
    val1 = 39
    index = 0
   }
   with (zui_create(242, 136, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 10
    values = string_format_ext(sys.ptp[i,10], 3, 4)
   }
   with (zui_create(242, 160, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 39
    values = string_format_ext(sys.ptp[i,39], 3, 4)
   }
   with (zui_create(302, 160, objUILabel)) {
    halign = 0
    caption = "max"
    val1 = 40
    index = 0
   }
   with (zui_create(322, 136, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 11
    values = string_format_ext(sys.ptp[i,11], 3, 4)
   }
   with (zui_create(322, 160, objUIGetNo)) {
    index = 0
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 40
    values = string_format_ext(sys.ptp[i,40], 3, 4)
   }
   
   with (zui_create(8, 184, objUILabel)) {
    halign = 0
    caption = "Alpha"
    index = 0
   }
   with (zui_create(68, 184, objUIPartValue)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    __index = 12
    val1 = 12
    def = 1
    caption = 'alpha'
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(148, 184, objUILabel)) {
    halign = 0
    caption = "1"
    index = 0
   }
   with (zui_create(168, 184, objUIGetNo)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    callback = pp_set_value;
    val1 = 13
    target = __parent
    values = string(sys.ptp[i,13])
    zui_set_size(40, 24) 
   }
   with (zui_create(222, 184, objUILabel)) {
    halign = 0
    caption = "2"
    val1 = 14
    index = 0
   }
   with (zui_create(242, 184, objUIGetNo)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    callback = pp_set_value;
    val1 = 14
    target = __parent
    values = string_format_ext(sys.ptp[i,14], 3, 4)
    zui_set_size(40, 24) 
   }
   with (zui_create(302, 184, objUILabel)) {
    halign = 0
    caption = "3"
    val1 = 15
    index = 0
   }
   with (zui_create(322, 184, objUIGetNo)) {
   zui_set_anchor(0,0.5)
    halign = 0
    index = 0
    callback = pp_set_value;
    val1 = 15
    target = __parent
    values = string_format_ext(sys.ptp[i,15], 3, 4)
    zui_set_size(40, 24) 
   }   

   with (zui_create(8, 208, objUILabel)) {
    halign = 0
    caption = "Use Blend"
    index = 0
   }
   with (zui_create(88,208, objUICheckbox)) {
    index = 0
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 31
    value = sys.ptp[i,31] mod 2
   }
      
   
   with (zui_create(8, 64, objUILabel)) {
    halign = 0
    caption = "Speed"
    index = 1
   }
   with (zui_create(78, 64, objUILabel)) {
    halign = 0
    caption = "Min"
    index = 1
   }
   with (zui_create(108, 64, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 16
    values = string_format_ext(sys.ptp[i,16], 3, 4)
   }
   with (zui_create(162, 64, objUILabel)) {
    halign = 0
    caption = "Max"
    index = 1
   }
   with (zui_create(192, 64, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 17
    values = string_format_ext(sys.ptp[i,17], 3, 4)
   }
   with (zui_create(246, 64, objUILabel)) {
    halign = 0
    caption = "Increase"
    index = 1
   }
   with (zui_create(302, 64, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 18
    values = string_format_ext(sys.ptp[i,18], 3, 4)
   }
   with (zui_create(356, 64, objUILabel)) {
    halign = 0
    caption = "Wiggle"
    index = 1
   }
   with (zui_create(402, 64, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 19
    values = string_format_ext(sys.ptp[i,19], 3, 4)
   }
   
   with (zui_create(8, 88, objUILabel)) {
    halign = 0
    caption = "Direction"
    index = 1
   }
   with (zui_create(78, 88, objUILabel)) {
    halign = 0
    caption = "Min"
    index = 1
   }
   with (zui_create(108, 88, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 20
    values = string_format_ext(sys.ptp[i,20], 3, 4)
   }
   with (zui_create(162, 88, objUILabel)) {
    halign = 0
    caption = "Max"
    index = 1
   }
   with (zui_create(192, 88, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 21
    values = string_format_ext(sys.ptp[i,21], 3, 4)
   }
   with (zui_create(246, 88, objUILabel)) {
    halign = 0
    caption = "Increase"
    index = 1
   }
   with (zui_create(302, 88, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 22
    values = string_format_ext(sys.ptp[i,22], 3, 4)
   }
   with (zui_create(356, 88, objUILabel)) {
    halign = 0
    caption = "Wiggle"
    index = 1
   }
   with (zui_create(402, 88, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 23
    values = string_format_ext(sys.ptp[i,23], 3, 4)
   }
   
   with (zui_create(8, 112, objUILabel)) {
    halign = 0
    caption = "Orientation"
    index = 1
   }
   with (zui_create(78, 112, objUILabel)) {
    halign = 0
    caption = "Min"
    index = 1
   }
   with (zui_create(108, 112, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 26
    values = string_format_ext(sys.ptp[i,26], 3, 4)
   }
   with (zui_create(162, 112, objUILabel)) {
    halign = 0
    caption = "Max"
    index = 1
   }
   with (zui_create(192, 112, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 27
    values = string_format_ext(sys.ptp[i,27], 3, 4)
   }
   with (zui_create(246, 112, objUILabel)) {
    halign = 0
    caption = "Increase"
    index = 1
   }
   with (zui_create(302, 112, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 28
    values = string_format_ext(sys.ptp[i,28], 3, 4)
   }
   with (zui_create(356, 112, objUILabel)) {
    halign = 0
    caption = "Wiggle"
    index = 1
   }
   with (zui_create(402, 112, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 29
    values = string_format_ext(sys.ptp[i,29], 3, 4)
   }
   with (zui_create(78, 136, objUILabel)) {
    halign = 0
    caption = "relative"
    index = 1
   }
   with (zui_create(148, 136, objUICheckbox)) {
    index = 1
    zui_set_anchor(0.5,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 30
    value = sys.ptp[i,30]
   }
   
 with (zui_create(8, 160, objUILabel)) {
    halign = 0
    caption = "Gravity"
    index = 1
   }
   with (zui_create(78, 160, objUILabel)) {
    halign = 0
    caption = "speed"
    index = 1
   }
   with (zui_create(138, 160, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 24
    values = string_format_ext(sys.ptp[i,24], 3, 4);
   }
   with (zui_create(192, 160, objUILabel)) {
    halign = 0
    caption = "direction"
    index = 1
   }
   with (zui_create(252, 160, objUIGetNo)) {
    index = 1
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 25
    values = string_format_ext(sys.ptp[i,25], 3, 4)
   }
   
   
 with (zui_create(8, 64, objUILabel)) {
    halign = 0
    caption = "Life"
    index = 2
   }
   with (zui_create(78, 64, objUILabel)) {
    halign = 0
    caption = "Min"
    index = 2
   }
   with (zui_create(108, 64, objUIGetNo)) {
    index = 2
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 32
    values = string_format_ext(sys.ptp[i,32], 3, 4)
   }
   with (zui_create(162, 64, objUILabel)) {
    halign = 0
    caption = "Max"
    index = 2
   }
   with (zui_create(192, 64, objUIGetNo)) {
    index = 2
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 33
    values = string_format_ext(sys.ptp[i,33], 3, 4)
   }
   
   with (zui_create(8, 88, objUILabel)) {
    halign = 0
    caption = "Step"
    index = 2
   }
   with (zui_create(68, 88, objUIPartValue)) {
    caption = "particle"
    zui_set_anchor(0,0.5)
    halign = 0
    index = 2
    __index = 34
    val1 = 34
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(138, 88, objUILabel)) {
    halign = 0
    caption = "Number"
    index = 2
   }
   with (zui_create(198, 88, objUIGetNo)) {
    index = 2
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 35
    values = string_format_ext(sys.ptp[i,35], 3, 4)
   }
   with (zui_create(8, 112, objUILabel)) {
    halign = 0
    caption = "Death"
    index = 2
   }
   with (zui_create(68, 112, objUIPartValue)) {
    caption = "particle"
    zui_set_anchor(0,0.5)
    halign = 0
    index = 2
    __index = 36
    val1 = 36
    zui_set_size(60, 24) 
    callback = pp_callback_pop1;
   }
   with (zui_create(138, 112, objUILabel)) {
    halign = 0
    caption = "Number"
    index = 2
   }
   with (zui_create(198, 112, objUIGetNo)) {
    index = 2
    zui_set_anchor(0,0.5)
    target = __parent
    callback = pp_set_value;
    val1 = 37
    values = string_format_ext(sys.ptp[i,37], 3, 4)
   }
   
  }
 }
}
