/// scr_place_block(block, block_array)

var block = argument0;
var block_array = argument1;

var block_grid_x_pos = floor(block.x / BLOCK_WIDTH);
var block_grid_y_pos = floor(block.y / BLOCK_HEIGHT);

for (
        var i = max(block_grid_x_pos - 2, 0);
        i < min(block_grid_x_pos + 2, (LEVEL_WIDTH+LEFT_WALL));
        i++
    ) {
    for (
            var j = max(block_grid_y_pos - 2, 0);
            j < min(block_grid_y_pos + 2, LEVEL_HEIGHT);
            j++
        ) {
        var collided = instance_position(i*BLOCK_WIDTH, (j+1)*BLOCK_HEIGHT, obj_active_block);

        var placed_block = noone
        if (collided != noone) {
           placed_block = instance_create(i*BLOCK_WIDTH, j*BLOCK_HEIGHT, obj_placed_block);
        }
        block_array[i, j] = placed_block;
    }
}

with (block) {
     instance_destroy();
}
