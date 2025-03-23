class_name Mainscene extends Node2D

@export var scenes: Array[Node2D] = []

func MoveToNewArea(newArea: Node2D) -> void:
	for scene in scenes:
		scene.visible = false
	newArea.visible = true
