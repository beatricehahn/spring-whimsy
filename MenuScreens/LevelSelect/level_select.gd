extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_back_pressed() -> void:
	TransitionScreen.change_scene("res://MenuScreens/MainMenu/main_menu.tscn")

# Level Button Signals ==============================================

# Directs user to forest level
func _on_forestlevel_pressed() -> void:
	TransitionScreen.change_scene("res://Stages/A_Forest/Forest01.tscn")
