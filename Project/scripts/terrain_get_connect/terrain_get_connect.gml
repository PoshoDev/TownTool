///terrain_connect()

var a = g.tile;
var b = obj_terrain;

if (instance_place(x-a, y, b) && !(instance_place(x+a, y, b))
&&  instance_place(x, y-a, b) && !(instance_place(x, y+a, b)))
{
    return con.NW;
}

if (instance_place(x, y-a, b) && !(instance_place(x, y+a, b))
&&  instance_place(x+a, y, b) && !(instance_place(x-a, y, b)))
{
    return con.NE;
}
    
if (instance_place(x+a, y, b) && !(instance_place(x-a, y, b))
&&  instance_place(x, y+a, b) && !(instance_place(x, y-a, b)))
{
    return con.SE;
}
    
if (instance_place(x, y+a, b) && !(instance_place(x, y-a, b))
&&  instance_place(x-a, y, b) && !(instance_place(x+a, y, b)))
{
    return con.SW;
}
    
show_debug_message("None found.");
return con.normal;