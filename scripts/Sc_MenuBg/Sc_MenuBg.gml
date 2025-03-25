function Sc_MenuBg(){
	var bkgd = layer_get_id("Background");
	bkgd = layer_background_get_id(bkgd);
	
	if(position_meeting(mouse_x, mouse_y, O_Play)){
		layer_background_sprite(bkgd, S_MenuPasse);
	}
	else if(position_meeting(mouse_x, mouse_y, O_Credits)){
		layer_background_sprite(bkgd, S_MenuPresent);
	}
	else if(position_meeting(mouse_x, mouse_y, O_Exit)){
		layer_background_sprite(bkgd, S_MenuFutur);
	}
	else {
		layer_background_sprite(bkgd, S_Menu);
	}
}