function Sc_DrawInventory(){
	draw_sprite(S_Inventory, 0, view_wport[0]/2, view_hport[0]/2);
	var _item_x = item_pos * 22;
	var _xx = bbox_left + 13 ;
	var _yy = bbox_top + 15;
	draw_sprite(S_InventorySelect, item_pos_index, _xx + _item_x, _yy);

	item_pos_index += 0.2;
	for (var i = 0; i < 5; i += 1) {
	    if !(itemArray[i, itemType] == itemNone) {
	        draw_sprite(itemArray[i, itemSprite], 0, _xx, _yy);
	        draw_text(_xx + 8, _yy + 9,  + string(itemArray[i, itemAmount]));
	    }
	    _xx += 40;
	}
}