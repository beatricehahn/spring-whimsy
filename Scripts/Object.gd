extends Sprite2D

var mouse_entered = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area2D.connect("mouse_entered", Callable(self, "set_mouse_entered"))
	$Area2D.connect("mouse_exited", Callable(self, "set_mouse_exited"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func set_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mouse_click, Input.CURSOR_ARROW)
	print("Mouse entered!")
	mouse_entered = true

func set_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.mouse_norm, Input.CURSOR_ARROW)
	print("Mouse exited!")
	mouse_entered = false
