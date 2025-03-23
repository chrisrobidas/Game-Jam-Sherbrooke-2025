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
	var monkey_and_gorilla_ending: Control = get_node("/root/MainScene/CanvasLayer2/MonkeyAndGorillaEnding")
	var backgrounds: CanvasLayer = get_node("/root/MainScene/CanvasLayer")
	monkey_and_gorilla_ending.visible = true
	backgrounds.visible = false
	reset_game()

func show_monkey_ending():
	var monkey_ending: Control = get_node("/root/MainScene/CanvasLayer2/MonkeyEnding")
	var backgrounds: CanvasLayer = get_node("/root/MainScene/CanvasLayer")
	monkey_ending.visible = true
	backgrounds.visible = false
	reset_game()

func show_gorilla_ending():
	var gorilla_ending: Control = get_node("/root/MainScene/CanvasLayer2/GorillaEnding")
	var backgrounds: CanvasLayer = get_node("/root/MainScene/CanvasLayer")
	gorilla_ending.visible = true
	backgrounds.visible = false
	reset_game()

func show_bad_ending():
	var bad_ending: Control = get_node("/root/MainScene/CanvasLayer2/BadEnding")
	var backgrounds: CanvasLayer = get_node("/root/MainScene/CanvasLayer")
	bad_ending.visible = true
	backgrounds.visible = false
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
