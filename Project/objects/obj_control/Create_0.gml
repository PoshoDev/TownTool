
#macro g global

g.tile = 32;
g.acre = 16;
g.town_width = 7;
g.town_height = 6;

g.scale = g.tile / 128;
g.grid = true;

enum kind { terrain, fence, item, tree, flower, house, bridge, stair };
g.create_type = kind.terrain;
g.create_index = 0;
g.create = false;


drag_x = 0;
drag_y = 0;
