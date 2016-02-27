///zui_create(x,y,object,[depth])
var newid = instance_create(0, 0, objZUIDummy);

with (newid) {
 zui_x_node_init();
 __x = argument[0];
 __y = argument[1];
 __parent = other.id;
 __type = -1;
 index = -1;//
 __lock = 0
 
 instance_change(argument[2], 1);
 
 if (argument_count >= 4)
  depth = argument[3];

  __startdepth = depth//
 visible = 0;
}

zui_add_child(newid);

return newid;
