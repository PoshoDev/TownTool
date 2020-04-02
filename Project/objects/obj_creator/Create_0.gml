
image_speed = 0;

switch (g.create_type)
{
    case 0:
        sprite_index = spr_tree;
    break;
}

image_xscale = g.tile / sprite_get_width(sprite_index);
image_yscale = g.tile / sprite_get_height(sprite_index);

collision = false;
