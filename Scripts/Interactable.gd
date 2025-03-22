@tool

class_name Interactable extends Area2D

@export var isHovered = false
@export var isInteractionEnabled = true
@export var selectableAreaShape: RectangleShape2D:
	set(newAreaShape):
		SetCollisionShape(newAreaShape)
		
@onready var sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.mouse_entered.connect(_on_mouse_entered)
	self.mouse_exited.connect(_on_mouse_exited)

func _input(event: InputEvent) -> void:
	if isInteractionEnabled and event is InputEventMouseButton and event.is_pressed() and isHovered:
		Interact()

func SetHovered(isHovered: bool) -> void:
	self.isHovered = isHovered

func SetCollisionShape(newCollisionShape: RectangleShape2D):
	selectableAreaShape = newCollisionShape
	$CollisionShape2D.set_shape(selectableAreaShape)

func Interact() -> void:
	print("Calling empty interact function ;P")

func _on_mouse_entered() -> void:
	SetHovered(true)

func _on_mouse_exited() -> void:
	SetHovered(false)
