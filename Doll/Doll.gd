extends Node2D
class_name Doll
@onready var snap = $Snap

var vestments: Array 


func Attach(vestment: Node2D):
	vestment.position = snap.position 
	vestments.append(vestment)
	#TODO: FIX LATER: How to Retrieve>>>???

func Detach(vestment: Node2D):
	pass
	#TODO: How do we retreive the correct vestment?
	
