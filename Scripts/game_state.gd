class_name GameState extends Node

# Has once talked to character
var hasOnceTalkedToGorilla: bool = false
var hasOnceTalkedToGiraffe: bool = false
var hasOnceTalkedToTaupe: bool = false
var hasAcceptedToHelpTaupe: bool = false

# Game progress
var hasBrokenCage: bool = false
var hasUnlockDoor: bool = false

func show_monkey_and_gorilla_ending():
	var monkey_and_gorilla_ending: Control = get_node("/root/MainScene/EndingsCanvasLayer/MonkeyAndGorillaEnding")
	var main_scene: Node2D = get_node("/root/MainScene")
	monkey_and_gorilla_ending.visible = true
	main_scene.disable_all_scenes()
	reset_game()

func show_monkey_ending():
	var monkey_ending: Control = get_node("/root/MainScene/EndingsCanvasLayer/MonkeyEnding")
	var main_scene: Node2D = get_node("/root/MainScene")
	monkey_ending.visible = true
	main_scene.disable_all_scenes()
	reset_game()

func show_gorilla_ending():
	var gorilla_ending: Control = get_node("/root/MainScene/EndingsCanvasLayer/GorillaEnding")
	var main_scene: Node2D = get_node("/root/MainScene")
	gorilla_ending.visible = true
	main_scene.disable_all_scenes()
	reset_game()

func show_bad_ending():
	var bad_ending: Control = get_node("/root/MainScene/EndingsCanvasLayer/BadEnding")
	var main_scene: Node2D = get_node("/root/MainScene")
	bad_ending.visible = true
	main_scene.disable_all_scenes()
	reset_game()
	
func reset_game():
	hasOnceTalkedToGorilla = false
	hasOnceTalkedToGiraffe = false
	hasOnceTalkedToTaupe = false
	hasAcceptedToHelpTaupe = false
	
	hasBrokenCage = false
	hasUnlockDoor = false
	
	PlayerInventory.items.clear()
	PlayerInventory.item_names.clear()
