/// scr_move_block(control, block)

var control = argument0;
var block = argument1;

with (block) {
    // Vertical movement on left/right movement is to give
    // a small window of horizontal movement the frame
    // before the block collides with something else.
    if (control.right_key) {
       y -= vspeed;
       x += MOVEMENT_SPEED;
    }
    if (control.left_key) {
       y -= vspeed;
       x -= MOVEMENT_SPEED;
    }
    if (control.down_key) {
       // Trigger movement alarm to trigger on next frame
       with (block) {
            alarm[0] = 1;
       }
    }
    if (control.rotate_key) {
        image_angle += 90;
        if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_placed_block)) {
            image_angle -= 90;
        }
    }
    if (debug_mode && control.delete_active_block) {
        with (block) {
            instance_destroy();
        }
    }

}
