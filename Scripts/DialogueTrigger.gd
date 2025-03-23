extends Highlightable

const Ballon = preload("res://user_interfaces/balloon.tscn")

@export var dialogue_ressource: DialogueResource
@export var dialogue_start: String

func Interact() -> void:
	var ballon: Node = Ballon.instantiate()
	get_tree().current_scene.add_child(ballon)
	ballon.start(dialogue_ressource, dialogue_start)
