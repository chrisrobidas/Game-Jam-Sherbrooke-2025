class_name Mainscene extends Node2D

@onready var move_sound: AudioStreamPlayer = %MoveSound

@export var scenes: Array[CanvasItem] = []

func MoveToNewArea(newArea: CanvasItem) -> void:
	for scene in scenes:
		scene.visible = false
	newArea.visible = true
	move_sound.play()
