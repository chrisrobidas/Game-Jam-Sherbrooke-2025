@tool

class_name Door extends Interactable

const Ballon = preload("res://user_interfaces/balloon.tscn")

@export var dialogue_ressource_lock: DialogueResource
@export var dialogue_start_lock: String

@export var dialogue_ressource_unlock: DialogueResource
@export var dialogue_start_unlock: String

func _ready() -> void:
	super._ready()
	$Sprite2D.set_polygon(selectableAreaPolygon)

func Interact() -> void:
	if "Clef" in PlayerInventory.item_names:
		PlayerGameState.hasUnlockDoor = true
		PlayerInventory.UseItemByName("Clef")
		self.isInteractionEnabled = false;
		self.hide()
		var ballon: Node = Ballon.instantiate()
		get_tree().current_scene.add_child(ballon)
		ballon.start(dialogue_ressource_unlock, dialogue_start_unlock)
	else:
		var ballon: Node = Ballon.instantiate()
		get_tree().current_scene.add_child(ballon)
		ballon.start(dialogue_ressource_lock, dialogue_start_lock)
