/// scr_place_block(block)

var block = argument0;

instance_create(LEVEL_WIDTH*BLOCK_WIDTH/2,LEVEL_HEIGHT*BLOCK_HEIGHT/2,obj_placed_block);

with (block) {
     instance_destroy();
}
