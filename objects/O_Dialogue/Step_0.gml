/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64C9F383
/// @DnDArgument : "var" "isTextDisplay"
/// @DnDArgument : "value" "true"
if(isTextDisplay == true){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4ED50DA2
	/// @DnDParent : 64C9F383
	/// @DnDArgument : "color" "$7AFFFFFF"
	draw_set_colour($7AFFFFFF & $ffffff);
	var l4ED50DA2_0=($7AFFFFFF >> 24);
	draw_set_alpha(l4ED50DA2_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 734504E4
	/// @DnDParent : 64C9F383
	/// @DnDArgument : "x1" "50"
	/// @DnDArgument : "y1" "720-230"
	/// @DnDArgument : "x2" "1620-50"
	/// @DnDArgument : "y2" "720-30"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(50, 720-230, 1620-50, 720-30, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 4BA2F33B
	/// @DnDParent : 64C9F383
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 48299636
	/// @DnDParent : 64C9F383
	/// @DnDArgument : "font" "Font1"
	/// @DnDSaveInfo : "font" "Font1"
	draw_set_font(Font1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 669375B7
	/// @DnDParent : 64C9F383
	/// @DnDArgument : "color" "$FF000000"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1C6C5B86
	/// @DnDParent : 64C9F383
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext(50+5,720-230+5,textToDisplay,25,1510)"
	/// @description Execute Code
	draw_text_ext(50+5,720-230+5,textToDisplay,25,1510)}