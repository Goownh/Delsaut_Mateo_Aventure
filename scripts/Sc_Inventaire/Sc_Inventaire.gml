function Sc_Inventaire(Item){
	var pos = 0;
	var type = Item.item;
	var sprite = sprite_index;
	var nv = false;

	for(i = 0; i < array_length(O_Inventory.itemArray); i++) {
		if(O_Inventory.itemArray[i][itemType] == itemNone) {
			nv = true;
			break;
		}
		if(O_Inventory.itemArray[i][itemType] == type) {
			break;
		}
		else {
			pos +=1;
		}
	}

	if (nv) {
		newArray = [type, sprite, 1];
		O_Inventory.itemArray[pos] = newArray;
		instance_destroy();	
	}
	else {
		if(type == itemSword) {O_Inventory.epee += 1;}
		if(type == itemHeal) {O_Inventory.soin += 1;}
		O_Inventory.itemArray[pos][itemAmount] += 1;
		
		instance_destroy();	
	}
}