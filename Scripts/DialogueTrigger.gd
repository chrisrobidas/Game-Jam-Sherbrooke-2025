@tool

extends Highlightable

const Ballon = preload("res://user_interfaces/balloon.tscn")

@export var dialogue_ressource: DialogueResource
@export var image: Texture2D:
	set(newImage):
		image = newImage
		$Sprite2D.texture = image
@export var imageScale: float = 1.0:
	set(newImageScale):
		imageScale = newImageScale
		$Sprite2D.scale = Vector2(imageScale, imageScale)

func _ready() -> void:
	super._ready()
	DialogueManager.dialogue_ended.connect(EnableInteraction)

func Interact() -> void:
	SetHovered(false)
	self.isInteractionEnabled = false
	DialogueManager.show_dialogue_balloon(dialogue_ressource)

func EnableInteraction(_resource: DialogueResource) -> void:
	self.isInteractionEnabled = true
