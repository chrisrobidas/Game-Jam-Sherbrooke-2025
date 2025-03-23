@tool

class_name Highlightable extends Interactable

@export var highlightColor: Color:
	set(newHighlightColor):
		highlightColor = newHighlightColor
		$Sprite2D.material.set_shader_parameter("highlightColor", highlightColor)
@export var highlightOpacityRange: Vector2:
	set(newHighlightOpacityRange):
		highlightOpacityRange = newHighlightOpacityRange
		$Sprite2D.material.set_shader_parameter("highlightOpacityRange", highlightOpacityRange)
@export var highlightBlinkSpeed: float:
	set(newHighlightBlinkSpeed):
		highlightBlinkSpeed = newHighlightBlinkSpeed
		$Sprite2D.material.set_shader_parameter("highlightBlinkSpeed", highlightBlinkSpeed)
		
func _ready() -> void:
	super._ready()
	$Sprite2D.set_polygon(selectableAreaPolygon)
