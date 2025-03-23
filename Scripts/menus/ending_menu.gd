extends Node

@onready var button_pressed_sound: AudioStreamPlayer = %ButtonPressedSound

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	button_pressed_sound.play()
	get_tree().change_scene_to_file("res://scenes/levels/main_menu.tscn")
