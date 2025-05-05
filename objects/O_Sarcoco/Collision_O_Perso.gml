var space = keyboard_check_pressed(vk_space);

if (space && parle) {
	script_execute(Sc_EndDialogue);
	alarm_set(0,20);
}
if (space && !parle && alarm_get(0)<=0) {
	script_execute(Sc_BeginDialogue, "Mon sarcophage...\nIl ne me servira plus.");		
}