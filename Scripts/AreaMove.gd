@tool

class_name AreaMove extends Highlightable

@export var areaNode: CanvasItem
@export var containingArea: Mainscene
@export var sprite: Sprite2D
@export var conditionToAllow: String

func _ready() -> void:
	super._ready()
	self.visible = false
	if sprite:
		sprite.visible = false
	$Sprite2D.set_polygon(selectableAreaPolygon)
	
func _process(delta):
	if self.visible == true or Engine.is_editor_hint():
		return
	
	if (not conditionToAllow 
	or (conditionToAllow == "hasBrokenCage" and PlayerGameState.hasBrokenCage)
	or (conditionToAllow == "hasUnlockDoor" and PlayerGameState.hasUnlockDoor)):
		self.visible = true
		if sprite:
			sprite.visible = true
		

func Interact() -> void:
	containingArea.MoveToNewArea(areaNode)
