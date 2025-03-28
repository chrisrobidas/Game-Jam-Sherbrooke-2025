extends Node

@onready var button_pressed_sound: AudioStreamPlayer = %ButtonPressedSound
@onready var main_menu_panel: Panel = %MainMenuPanel
@onready var credits_panel: Panel = %CreditsPanel

func _on_play_button_pressed() -> void:
	PlayerInventory.items.clear()
	button_pressed_sound.play()
	get_tree().change_scene_to_file("res://scenes/levels/MainScene.tscn")

func _on_credits_button_pressed() -> void:
	main_menu_panel.hide()
	credits_panel.show()

func _on_quit_button_pressed() -> void:
	button_pressed_sound.play()
	get_tree().quit()

func _on_back_button_pressed() -> void:
	main_menu_panel.show()
	credits_panel.hide()
