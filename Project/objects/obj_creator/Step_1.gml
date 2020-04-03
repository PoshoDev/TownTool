
// Visualization
sprite_set_kind(g.create_type);
image_index = g.create_index;


// Position
x = mouse_x - g.tile/2;
y = mouse_y - g.tile/2;;

move_snap(g.tile, g.tile);


// Collision
if (place_free(x, y))
{
    collision = false;
    image_blend = c_white;
}
else
{
    collision = true;
    image_blend = c_red;
}


// Create
if (mouse_check_button(mb_left) && !collision)
{
    if (g.create_type == kind.terrain)
        var inst = instance_create_depth(x, y, -1, obj_terrain);
    else
        var inst = instance_create_depth(x, y, -1, obj_thing);
    
    inst.sprite_index = sprite_index
    inst.image_index = image_index;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    inst.type = g.create_type;
}
