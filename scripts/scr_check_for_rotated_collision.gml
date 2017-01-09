/// scr_check_for_rotated_collision(block)

var block = argument0;

var will_collide = 0;

with (block) {
    var image_angle_at_start = image_angle;
    image_angle += 90;
    var image_angle_in_between = image_angle;
    if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_placed_block)) {
       will_collide = 1;
    }
    image_angle -= 90;
    var image_angle_after = image_angle;
}

return will_collide;
