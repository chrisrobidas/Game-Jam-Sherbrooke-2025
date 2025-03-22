class_name Collectable extends Interactable

@export var inventory: Inventory
@export var collectableName = ""
@export var item: InventoryItem

func Interact() -> void:
	if (inventory != null):
		inventory.CollectItem(item)
		self.isInteractionEnabled = false;
		self.hide()
