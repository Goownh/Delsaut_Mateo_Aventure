function Sc_InventaireSoin(){
	for(i = 0; i < array_length(O_Inventory.itemArray); i++) {
		if(O_Inventory.itemArray[i][itemType] == itemHeal) {
			O_Inventory.itemArray[i][itemAmount] -= 1;
			break;
		}
	}
}