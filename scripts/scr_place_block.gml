/// scr_place_block(block)

var block = argument0;

var block_grid_x_pos = floor(block.x / BLOCK_WIDTH);
var block_grid_y_pos = floor(block.y / BLOCK_HEIGHT);

for ( var i = BLOCK_WIDTH/2; i < (LEVEL_WIDTH+LEFT_WALL)*BLOCK_WIDTH; i += BLOCK_WIDTH ) {
    for ( var j = BLOCK_HEIGHT/2; j < LEVEL_HEIGHT*BLOCK_HEIGHT; j += BLOCK_HEIGHT ) {
        var collided = position_meeting(i, j, block);
        var placed_block = noone;
        if (collided) {
           placed_block = instance_create(i - BLOCK_WIDTH/2, j - BLOCK_HEIGHT/2, obj_placed_block);

           placed_block.image_index = block.selected_sprite_index;
        }
    }
}

with (block) {
     instance_destroy();
}
