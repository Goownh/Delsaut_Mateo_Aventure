var space = keyboard_check_pressed(vk_space);

if (space && parle) {
	script_execute(Sc_EndDialogue);
	alarm_set(0,20);
}
if (space && !parle && alarm_get(0)<=0) {
	if(!dejaParle) {
		script_execute(Sc_BeginDialogue, "Bonjour, je vend de tout par ici");		
	}
	else {
		script_execute(Sc_BeginDialogue, "Degage");
	}
}