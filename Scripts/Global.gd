extends Node

var save_path = "user://data.save"

var mouse_norm = load("res://Assets/Interface/textures_ui/Cursor1.png")
var mouse_click = load("res://Assets/Interface/textures_ui/Cursor2.png")

var Data = {
	"Forest01": []
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func save_data() -> void:
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(Data)
	

func load_data():
	pass
