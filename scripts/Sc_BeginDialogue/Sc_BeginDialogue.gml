function Sc_BeginDialogue(TextValue){
	O_Dialogue.isTextDisplay = true;
	O_Dialogue.textToDisplay = TextValue;
	O_Perso.walkSpeed = 0;
	O_Merchant.parle = true;
	if(!dejaParle){
		O_Merchant.dejaParle = true;
	}
}