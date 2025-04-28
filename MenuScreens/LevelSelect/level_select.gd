extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Level Button Signals ==============================================

# Directs user to forest level
func _on_forestlevel_pressed() -> void:
	TransitionScreen.change_scene("res://Stages/A_Forest/forest.tscn")
