function Sc_DrawInventaire(){
	draw_sprite_ext(S_Inventory, 0, view_wport[0]/2, view_hport[0]/2, 5, 5, 0, #FFFFFF, 1);
	var _xx = O_Inventory.x + 300;
	var _yy = O_Inventory.y + 300;
	for (var i = 0; i < 5; i += 1) {
	    if !(O_Inventory.itemArray[i, itemType] == itemNone) {
	        draw_sprite_ext(O_Inventory.itemArray[i, itemSprite], 0, _xx, _yy, 2, 2, 0, #FFFFFF, 1);
	        draw_text(_xx + 8, _yy + 9,  + string(O_Inventory.itemArray[i, itemAmount]));
	    }
	    _xx += 40;
	}
}