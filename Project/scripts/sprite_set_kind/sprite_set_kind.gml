///sprite_create_kind(kind)

switch(g.create_type)
{
    case kind.terrain:
        sprite_index = spr_terrain;
    break;
    
    case kind.tree:
        sprite_index = spr_tree;
    break;
}

image_xscale = g.tile / sprite_get_width(sprite_index);
image_yscale = g.tile / sprite_get_height(sprite_index);