/// scr_check_for_rotated_collision(block)

var block = argument0;
var original_image_index = block.image_index;

var will_collide = 0;

with (block) {
     image_index += 1;

    if (place_meeting(x, y, obj_wall)) {
       will_collide = 1;
    }
    image_index -= 1;
}

return will_collide;
