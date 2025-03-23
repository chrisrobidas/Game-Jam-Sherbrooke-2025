@tool

class_name Collectable extends Interactable

@onready var pickup_sound: AudioStreamPlayer = %PickupSound

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
	pickup_sound.play()
	self.isInteractionEnabled = false;
	self.hide()
