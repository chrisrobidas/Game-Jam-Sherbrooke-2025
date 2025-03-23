@tool

class_name Collectable extends Interactable

@export var show_inventory: ShowInventory
@export var item: InventoryItem
@export var imageScale: float = 1.0:
	set(newImageScale):
		imageScale = newImageScale
		$Sprite2D.scale = Vector2(imageScale, imageScale)

func _ready() -> void:
	super._ready()
	$Sprite2D.texture = item.itemImage

func SetHovered(isHovered: bool) -> void:
	super.SetHovered(isHovered)
	sprite2D.material.set_shader_parameter("isHovered", isHovered)

func Interact() -> void:
	PlayerInventory.CollectItem(item)
	show_inventory.UpdateItemList()
	self.isInteractionEnabled = false;
	self.hide()
