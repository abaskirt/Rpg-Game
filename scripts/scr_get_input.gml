///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('X'));
swap_key = keyboard_check_pressed(ord('Z'));
spell_key = keyboard_check_pressed(ord('V'));
pause_key = keyboard_check_pressed(vk_escape);

//Get the axis
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key);

//Check for gamepad input
if(gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    spell_key = gamepad_button_check_pressed(0, gp_face2);
    pause_key = gamepad_button_check_pressed(0, gp_start);
    swap_key = gamepad_button_check_pressed(0, gp_face4);
}