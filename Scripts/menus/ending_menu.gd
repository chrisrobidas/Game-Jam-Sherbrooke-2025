extends Node

@onready var button_pressed_sound: AudioStreamPlayer = %ButtonPressedSound

func _process(delta):
	if PlayerGameState.hasReachMonkeyAndGorillaEnding:
		pass
	if PlayerGameState.hasReachMonkeyAndGorillaEnding:
		pass
	if PlayerGameState.hasReachMonkeyAndGorillaEnding:
		pass
	if PlayerGameState.hasReachMonkeyAndGorillaEnding:
		pass

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	button_pressed_sound.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/main_menu.tscn")
