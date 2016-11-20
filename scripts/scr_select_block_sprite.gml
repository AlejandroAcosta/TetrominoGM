/// scr_select_block_sprite(sprite_index)
var sprite_idx = argument0;
var sprite;
switch (sprite_idx) {
       case L_BLOCK:
            sprite = spr_l_block;
            break;
       case O_BLOCK:
            sprite = spr_o_block;
            break;
       case T_BLOCK:
            sprite = spr_t_block;
            break;
       case Z_BLOCK:
            sprite = spr_z_block;
            break;
       case S_BLOCK:
            sprite = spr_s_block;
            break;
}

return sprite;
