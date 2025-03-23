extends Node

@onready var button_pressed_sound: AudioStreamPlayer = %ButtonPressedSound

func _on_play_button_pressed() -> void:
	button_pressed_sound.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/MainScene.tscn")

func _on_quit_button_pressed() -> void:
	button_pressed_sound.play()
	get_tree().quit()
