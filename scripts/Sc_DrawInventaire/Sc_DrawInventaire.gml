function Sc_DrawInventaire(){
	draw_sprite_ext(S_Inventory, 0, view_wport[0]/2, view_hport[0]/2, 3, 3, 0, #FFFFFF, 1);
	var _xx = O_Inventory.x + view_wport[0]/2-80;
	var _yy = O_Inventory.y + view_hport[0]/2-30;
	for (var i = 0; i < 3; i += 1) {
	    if !(O_Inventory.itemArray[i, itemType] == itemNone) {
	        draw_sprite_ext(O_Inventory.itemArray[i, itemSprite], 0, _xx, _yy, 0.3, 0.3, 0, #FFFFFF, 1);
	        draw_text(_xx + 70, _yy + 70,  + string(O_Inventory.itemArray[i, itemAmount]));
	    }
	    _xx += 270;
	}
	if(O_Inventory.vases > 0){
		draw_sprite_ext(S_Vase1, 0, _xx-330, _yy-80, 0.3, 0.3, 0, #FFFFFF, 1);
		draw_text(_xx - 200, _yy + 70,  + string(O_Inventory.vases));
	}
}	