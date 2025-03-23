@tool

class_name AreaMove extends Highlightable

@export var areaNode: CanvasItem
@export var containingArea: Mainscene

func _ready() -> void:
	super._ready()
	$Sprite2D.set_polygon(selectableAreaPolygon)

func Interact() -> void:
	containingArea.MoveToNewArea(areaNode)
