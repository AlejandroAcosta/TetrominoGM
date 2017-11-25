/// scr_get_input()
right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
down_key = keyboard_check(vk_down);
rotate_key = keyboard_check_pressed(vk_up);

delete_active_block = keyboard_check_pressed(vk_delete);

if (debug_mode) {
    if (keyboard_check_pressed(vk_f1)) {
        room_goto(rm_game);
    }
    if (keyboard_check_pressed(vk_f2)) {
        room_goto(rm_test_line_clear);
    }
    if (keyboard_check_pressed(vk_f3)) {
        room_goto(rm_test_two_clear);
    }
    if (keyboard_check_pressed(vk_f4)) {
        room_goto(rm_test_three_clear);
    }
    if (keyboard_check_pressed(vk_f5)) {
        room_goto(rm_test_four_clear);
    }
}
