var space = keyboard_check(vk_space);
if (space && !parle) {
	if(!dejaParle) {
		script_execute(Sc_BeginDialogue, "Bonjour, je vend de tout par ici");		
	}
	else {
		script_execute(Sc_BeginDialogue, "Dégage");
	}
	parle = true;
}

if (space && parle) {
	script_execute(Sc_EndDialogue);
}