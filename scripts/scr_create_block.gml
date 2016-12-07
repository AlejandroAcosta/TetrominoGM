/// scr_create_block(selected_block, sprite_image_index)

var selected_block = argument0;
var sprite_image_index = argument1;
var x_origin = BLOCK_X_ORIGIN * BLOCK_WIDTH;
var y_origin = BLOCK_Y_ORIGIN * BLOCK_HEIGHT;

switch(selected_block) {
    case O_BLOCK:
    case I_BLOCK:
        break;
    case T_BLOCK:
    case L_BLOCK:
    case S_BLOCK:
    case Z_BLOCK:
         x_origin += BLOCK_HEIGHT/2;
         y_origin -= BLOCK_HEIGHT/2;
         break;
    default:
        x_origin += BLOCK_WIDTH/2;
}

var block = instance_create(x_origin, y_origin, obj_active_block);
block.selected_sprite_index = selected_block;
block.sprite_index = sprite_image_index;
