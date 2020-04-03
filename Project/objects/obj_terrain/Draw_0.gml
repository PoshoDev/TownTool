
switch (dir)
{
    case con.normal:
        draw_self();
    break;
    
    case con.NW:
        draw_sprite_ext(spr_terrain_part, image_index, x, y,
        image_xscale, image_yscale, 0, image_blend, image_alpha)
    break;
    
    case con.NE:
        draw_sprite_ext(spr_terrain_part, image_index, x+g.tile, y,
        image_xscale, image_yscale, 270, image_blend, image_alpha)
    break;
    
    case con.SE:
        draw_sprite_ext(spr_terrain_part, image_index, x+g.tile, y+g.tile,
        image_xscale, image_yscale, 180, image_blend, image_alpha)
    break;
    
    case con.SW:
        draw_sprite_ext(spr_terrain_part, image_index, x, y+g.tile,
        image_xscale, image_yscale, 90, image_blend, image_alpha)
    break;
}
    