extends Node
@onready var doll = $Doll
const TOP = preload("res://Tops/Top.tscn")

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var top = TOP.instantiate()
		#doll.add_child(top)
		#doll.AttachTop(top)
