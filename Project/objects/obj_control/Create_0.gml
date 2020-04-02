
#macro g global

g.tile = 32;
g.acre = 16;
g.town_width = 7;
g.town_height = 6;

g.grid = true;

g.create_type = 0;
g.create_index = 0;

drag_x = 0;
drag_y = 0;

instance_create_depth(0, 0, -1000, obj_creator);
