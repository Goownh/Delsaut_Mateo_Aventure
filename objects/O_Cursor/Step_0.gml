switch(room) {
	case Menu:
	case Credits:
	case Mort:
		if(O_Controles.controles = "clavier" ) {
			//window_set_cursor(cr_none);
			cursor_sprite = S_Souris
		}
		else {
			window_set_cursor(cr_none);
			cursor_sprite = S_Manette;
		}
	break;
	
	default:
		cursor_sprite = -1;	
	break;
}
	
	
	
	
	
	

