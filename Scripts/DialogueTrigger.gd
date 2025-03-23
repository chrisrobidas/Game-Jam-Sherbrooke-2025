@tool

extends Highlightable

const Ballon = preload("res://user_interfaces/balloon.tscn")

@export var dialogue_ressource: DialogueResource
@export var dialogue_start: String
@export var image: Texture2D:
	set(newImage):
		image = newImage
		$Sprite2D.texture = image
@export var imageScale: float = 1.0:
	set(newImageScale):
		imageScale = newImageScale
		$Sprite2D.scale = Vector2(imageScale, imageScale)

func Interact() -> void:
	var ballon: Node = Ballon.instantiate()
	get_tree().current_scene.add_child(ballon)
	ballon.start(dialogue_ressource, dialogue_start)
