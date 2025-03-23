class_name Mainscene extends Node2D

@export var scenes: Array[CanvasItem] = []

func MoveToNewArea(newArea: CanvasItem) -> void:
	for scene in scenes:
		scene.visible = false
	newArea.visible = true
