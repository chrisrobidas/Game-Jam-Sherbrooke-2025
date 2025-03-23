extends Node

@onready var button_pressed_sound: AudioStreamPlayer = %ButtonPressedSound

var pause_menu: Control

func _ready():
	pause_menu = get_parent()
	pause_menu.visible = false

func _input(event):
	if event.is_action_pressed("pause"):
		pause_menu.visible = not pause_menu.visible
		get_tree().paused = not get_tree().paused

func _on_resume_button_pressed() -> void:
	pause_menu.visible = false
	get_tree().paused = false
	button_pressed_sound.play()

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	button_pressed_sound.play()
	get_tree().change_scene_to_file("res://scenes/levels/main_menu.tscn")

func _on_quit_button_pressed() -> void:
	button_pressed_sound.play()
	get_tree().quit()
