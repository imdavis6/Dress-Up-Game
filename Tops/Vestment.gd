extends Area2D
class_name Vestment

@onready var animated_sprite_2d = $AnimatedSprite2D
@export var snap_distance: float = 20.0 # px
var is_dragging: bool = false
var mouse_offset: Vector2

func _ready():
	input_event.connect(OnInputEvent)
	
func _process(delta):
	if Input.is_action_just_released("drag"):
		is_dragging = false
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		animated_sprite_2d.frame
		
	
	if is_dragging: 
		position = get_viewport().get_mouse_position() - get_parent().position - mouse_offset
		var pos = get_parent().snap.position
		if position.distance_to(pos) < snap_distance:
			get_parent().Attach(self)
			#TODO: Detatch as well
			

func OnInputEvent(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		#Pressed down
		if event.pressed:
			is_dragging = true
			mouse_offset = get_local_mouse_position()

