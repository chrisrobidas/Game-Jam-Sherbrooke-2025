@tool

class_name Door extends Interactable

const Ballon = preload("res://user_interfaces/balloon.tscn")

@export var dialogue_ressource_lock: DialogueResource
@export var dialogue_ressource_unlock: DialogueResource

func _ready() -> void:
	super._ready()
	$Sprite2D.set_polygon(selectableAreaPolygon)
	DialogueManager.dialogue_ended.connect(EnableInteraction)

func Interact() -> void:
	if "Clef" in PlayerInventory.item_names:
		PlayerGameState.hasUnlockDoor = true
		PlayerInventory.UseItemByName("Clef")
		self.hide()
		DialogueManager.show_dialogue_balloon(dialogue_ressource_unlock)
	else:
		DialogueManager.show_dialogue_balloon(dialogue_ressource_lock)
	SetHovered(false)
	self.isInteractionEnabled = false

func EnableInteraction(_resource: DialogueResource) -> void:
	self.isInteractionEnabled = true
