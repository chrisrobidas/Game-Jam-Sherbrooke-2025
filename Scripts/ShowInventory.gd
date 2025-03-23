class_name ShowInventory extends Node

func _ready():
	PlayerInventory.items_changed.connect(UpdateItemList)

func UpdateItemList() -> void:
	$ItemList.clear()
	for item in PlayerInventory.items:
		var index = $ItemList.add_icon_item(item.itemImage, false)
		$ItemList.set_item_tooltip(index, item.itemName)
