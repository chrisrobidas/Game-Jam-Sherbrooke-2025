class_name Inventory extends Node

# Need this item_names array cuz dialogue files can't check objects properties,
# or at least I did not find how...
@export var item_names: Array[String] = []

@export var items: Array[InventoryItem] = []

signal items_changed

func CollectItem(item: InventoryItem):
	print("Item ", item.itemName, " has been collected.")
	PlayerInventory.items.push_back(item)
	PlayerInventory.item_names.push_back(item.name)
	items_changed.emit()

func UseItem(index: int):
	print("Item ", items[index].itemName, " has been used.")
	PlayerInventory.items.remove_at(index)
	PlayerInventory.item_names.remove_at(index)
	items_changed.emit()
	
func UseItemByName(item_name: String):
	var index = -1
	for i in range(items.size()):
		if items[i].itemName == item_name:
			index = i
			break
	UseItem(index)
