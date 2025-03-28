@tool

class_name Interactable extends Area2D

@export var isHovered = false
@export var isInteractionEnabled = true
@export var selectableAreaPolygon: PackedVector2Array:
	set(newAreaPolygon):
		selectableAreaPolygon = newAreaPolygon
		$CollisionPolygon2D.set_polygon(selectableAreaPolygon)
		
@onready var canvasNode: Node2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.mouse_entered.connect(_on_mouse_entered)
	self.mouse_exited.connect(_on_mouse_exited)

func _input(event: InputEvent) -> void:
	if isInteractionEnabled and event is InputEventMouseButton and event.is_pressed() and isHovered:
		Interact()

func SetHovered(newIsHovered: bool) -> void:
	if not isInteractionEnabled: return
	isHovered = newIsHovered
	$Sprite2D.material.set_shader_parameter("isHovered", isHovered)

func Interact() -> void:
	print("Calling empty interact function ;P")

func _on_mouse_entered() -> void:
	SetHovered(true)

func _on_mouse_exited() -> void:
	SetHovered(false)
