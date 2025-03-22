class_name Inventory extends Node

@export var items: Array[InventoryItem] = []

func UpdateItemList() -> void:
	$ItemList.clear()
	for item in items:
		var index = $ItemList.add_icon_item(item.itemImage, false)
		$ItemList.set_item_tooltip(index, item.itemName)

func CollectItem(item: InventoryItem):
	items.push_back(item)
	UpdateItemList()
	print("Item ", item.itemName, " has been collected.")

func UseItem(index: int):
	items.remove_at(index)
	UpdateItemList
