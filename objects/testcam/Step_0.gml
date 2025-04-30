if(position_meeting(view_xport[1], view_yport[1], O_Perso)){
	view_visible[0] = 0;
	view_visible[1] = 1;
}
else {
	view_visible[0] = 1;
	view_visible[1] = 0;
}/*
show_debug_message("x");
show_debug_message(view_xport[0]);
show_debug_message("y");
show_debug_message(view_yport[0]);*/