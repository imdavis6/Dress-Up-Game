extends Area2D


const SNAP_DISTANCE = 100 # px
var is_dragging: bool = false
func _ready():
	input_event.connect(OnInputEvent)

func OnInputEvent(view, event, idk):
	if event is InputEventMouseButton:
		#Pressed down
		if event.pressed:
			is_dragging = true
		#Lift up
		else:
			is_dragging = false

func _process(delta):
	if is_dragging: 
		position = get_viewport().get_mouse_position() - get_parent().position
		var pos = get_parent().top_snap.position
		if position.distance_to(pos) < SNAP_DISTANCE:
			print("YIPPIE")
			get_parent().AttachBottom(self)
