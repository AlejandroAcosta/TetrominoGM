/// scr_check_for_block_collision(block)

var block = argument0;

var level_height = LEVEL_HEIGHT * BLOCK_HEIGHT;
var level_width = LEVEL_WIDTH * BLOCK_WIDTH;
var left_wall = LEFT_WALL * BLOCK_WIDTH;

var collided_with_bottom = collision_line(
    0, level_height,
    level_width + left_wall, level_height,
    block, false, false
) || false;

var collided_with_placed_block = false;
with (block) {
    collided_with_placed_block = place_meeting(x, y, obj_placed_block);
}

return collided_with_bottom || collided_with_placed_block;
