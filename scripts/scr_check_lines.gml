/// scr_check_lines(control)

var control = argument0;

for (var j = BLOCK_HEIGHT/2; j< LEVEL_HEIGHT*BLOCK_HEIGHT; j+= BLOCK_HEIGHT) {
    var row_is_full = true;
    var blocks;
    var y_grid = floor(j / BLOCK_HEIGHT);

    for (
            var i = BLOCK_WIDTH * (0.5 + LEFT_WALL);
            i < (LEVEL_WIDTH + LEFT_WALL) * BLOCK_WIDTH;
            i += BLOCK_WIDTH
        ) {
        var x_grid = floor(i / BLOCK_WIDTH);

        var block = instance_position(i, j, obj_placed_block);
        blocks[x_grid, y_grid] = block;

        // Break out of inner loop if there is no block
        if (blocks[x_grid, y_grid] == noone) {
            row_is_full = false;
            break;
        }
    }

    if (row_is_full) {
        var destroyer = instance_create(LEFT_WALL*BLOCK_WIDTH, y_grid * BLOCK_HEIGHT, obj_block_destroyer);
        with (destroyer) {
            image_xscale *= LEVEL_WIDTH;
        }
    }
}
