class_name AreaMove extends Highlightable

@export var areaNode: CanvasItem
@export var containingArea: Mainscene

func Interact() -> void:
	containingArea.MoveToNewArea(areaNode)
	print("Moving to new area: ", areaNode.name)
