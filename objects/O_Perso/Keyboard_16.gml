/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 63A80401
variable = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 502017FF
/// @DnDArgument : "gp" "variable"
variable = gamepad_is_connected(variable) ? gamepad_axis_value(variable, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 511BA83D
/// @DnDArgument : "gp" "variable"
variable = gamepad_is_connected(variable) ? gamepad_button_value(variable, gp_shoulderlb) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 78C08A6A
var l78C08A6A_0 = gamepad_get_device_count();var l78C08A6A_1 = 0;for(var l78C08A6A_2 = 0; l78C08A6A_2 < l78C08A6A_0; ++l78C08A6A_2) {	if(gamepad_is_connected(l78C08A6A_2)) { ++l78C08A6A_1; }}variable = l78C08A6A_1;

/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
/// @DnDVersion : 1
/// @DnDHash : 1CF5FEFC
gamepad_set_axis_deadzone(0, 0.2);

/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Button_Threshold
/// @DnDVersion : 1
/// @DnDHash : 2E3F9E3D
gamepad_set_button_threshold(0, 0.5);

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 6605E3F7
var l6605E3F7_0 = 0;var l6605E3F7_1 = gp_face4;if(gamepad_is_connected(l6605E3F7_0) && (gamepad_button_check(l6605E3F7_0, l6605E3F7_1) || gamepad_button_check_released(l6605E3F7_0, l6605E3F7_1))){}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 0AA83D59
var l0AA83D59_0 = 0;var l0AA83D59_1 = gp_face4;if(gamepad_is_connected(l0AA83D59_0) && gamepad_button_check_pressed(l0AA83D59_0, l0AA83D59_1)){}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
/// @DnDVersion : 1.1
/// @DnDHash : 07554895
var l07554895_0 = 0;var l07554895_1 = gp_face4;if(gamepad_is_connected(l07554895_0) && gamepad_button_check_released(l07554895_0, l07554895_1)){}