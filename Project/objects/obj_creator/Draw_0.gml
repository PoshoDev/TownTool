
draw_self();

if (image_blend == c_red)
    draw_set_color(c_red);
else
    draw_set_color(c_blue);
    
draw_rectangle(x, y, x+g.tile, y+g.tile, true);