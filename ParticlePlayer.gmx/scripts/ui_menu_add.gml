///ui_menu_bar_add(parent,callback,caption,shortcut)
var index = totalitems++;

menu_callback[index] = argument[1];
menu_caption[index] = argument[2];

if (argument_count > 3)
 menu_shortcut[index] = argument[3];
else
 menu_shortcut[index] = "";

menu_childs[index] = 0;

if (argument[0] < 0) {
 item[items++] = index;
} else {
 menu_child[argument[0], menu_childs[argument[0]]++] = index;
}

return index;
