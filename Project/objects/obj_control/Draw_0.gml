
// Tiles
var len = g.tile * g.acre;
var max_w = len * g.town_width;
var max_h = len * g.town_height;

for(var i=0; i<max_w; i+=g.tile)
    for (var j=0; j<max_h; j+=g.tile)
        draw_sprite(spr_terrain, 0, i, j);


// Grid
if (g.grid)
{
    draw_set_color(c_white);

    for (var i=0; i<=max_w; i+=g.tile)
        draw_line_width(i, 0, i, max_h, 1);
    
    for (var i=0; i<=max_h; i+=g.tile)
        draw_line_width(0, i, max_w, i, 1);
    
    draw_set_color(c_white);
}


// Acre Limits
draw_set_color(c_red);

for (var i=0; i<=g.town_width; i++)
    draw_line_width(len*i, 0, len*i, max_h, 2);

for (var i=0; i<=g.town_height; i++)
    draw_line_width(0, len*i, max_w, len*i, 2);

draw_set_color(c_white);
