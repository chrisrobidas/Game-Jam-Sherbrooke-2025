@tool

class_name Collectable extends Interactable

@export var show_inventory: ShowInventory
@export var item: InventoryItem:
	set(newItem):
		item = newItem
		$Sprite2D.texture = item.itemImage
@export var imageScale: float = 1.0:
	set(newImageScale):
		imageScale = newImageScale
		$Sprite2D.scale = Vector2(imageScale, imageScale)

func Interact() -> void:
	PlayerInventory.CollectItem(item)
	show_inventory.UpdateItemList()
	self.isInteractionEnabled = false;
	self.hide()
