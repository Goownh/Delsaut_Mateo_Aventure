var space = keyboard_check_pressed(vk_space);

if (space && parle) {
	script_execute(Sc_EndDialogue);
	alarm_set(0,20);
}
if (space && !parle && alarm_get(0)<=0) {
	if(!dejaParle) {
		script_execute(Sc_BeginDialogue, "Prend ce dont tu a besoin pour ta quete.\n\nDe toute facon, ton ame est deja mienne.");		
	}
	else {
		script_execute(Sc_BeginDialogue, "Degage maintenant !\n\nIl faut que tu meure le plus vite possible pour mon succes.");
	}
}