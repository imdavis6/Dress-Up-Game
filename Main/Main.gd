extends Node
@onready var doll = $Doll
@onready var save_button = $SaveButton
@onready var load_button = $LoadButton


const TOP = preload("res://Tops/Top.tscn")
const USER_PATH = "user://game_save.sav"


func _ready():
	save_button.pressed.connect(OnSaved)
	load_button.pressed.connect(OnLoad)
	
func OnSaved():
	print("fart")
	var file = FileAccess.open(USER_PATH, FileAccess.WRITE)
	file.store_string(doll.vestments[0].name)

func OnLoad():
	var file = FileAccess.open(USER_PATH, FileAccess.READ)
	var number = file.get_32()
	print(number)
#TODO: Load, Display, Attach vestments 

