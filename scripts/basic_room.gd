extends Node2D

var hand_cursor = preload("res://art/sample/cursor_normal.png")
var found_cursor = preload("res://art/sample/cursor_found.png")

# called when the node enters the scene tree for the first time
func _ready():
	pass

# called every frame. 'delte' is the elapsed time since the previous frame.
func _process(delta):
	pass

func change_cursor_hand():
	Input.set_custom_mouse_cursor(found_cursor)

func change_cursor_back():
	Input.set_custom_mouse_cursor(hand_cursor)
