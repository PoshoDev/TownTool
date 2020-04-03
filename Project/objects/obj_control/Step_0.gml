
// Dragging
if (mouse_check_button_pressed(mb_middle))
{
    drag_x = mouse_x;
    drag_y = mouse_y;
}


// Panning
if (mouse_check_button(mb_middle))
{
    camera_set_view_pos(view_camera,
    drag_x-(mouse_x-camera_get_view_x(view_camera)),
    drag_y-(mouse_y-camera_get_view_y(view_camera)));
}


// Zooming
if (mouse_wheel_down())
{
    camera_set_view_size(view_camera,
    camera_get_view_width(view_camera)*0.75,
    camera_get_view_height(view_camera)*0.75);
}
else if (mouse_wheel_up())
{
    camera_set_view_size(view_camera,
    camera_get_view_width(view_camera)*1.25,
    camera_get_view_height(view_camera)*1.25);
}


// Changing Item
if (keyboard_check_pressed(vk_right))
{
    if (++g.create_index > sprite_get_number(spr_tree))
        g.create_index = 0;
}
else if (keyboard_check_pressed(vk_left))
{
    if (--g.create_index < 0)
        g.create_index = sprite_get_number(spr_tree);
}


// Enable building
if (keyboard_check_pressed(vk_space))
{
    g.create = !g.create;

    if (g.create)
    {
        with (instance_create_depth(0, 0, -1000, obj_creator))
            sprite_index = spr_terrain;
    }
    else if (instance_exists(obj_creator))
        with (obj_creator)
            instance_destroy();
}
    

// Disable grids
if (keyboard_check_pressed(ord("G")))
    g.grid = !g.grid;