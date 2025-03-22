class_name Inventory extends Node

@export var items: Array[InventoryItem] = []

func CollectItem(item: InventoryItem):
	items.push_back(item)
	print("Item ", item.itemName, " has been collected.")

func UseItem(index: int):
	items.remove_at(index)
