extends Control


func _on_back_pressed() -> void:
	TransitionScreen.change_scene("res://MenuScreens/MainMenu/main_menu.tscn")

# Level Button Signals ==============================================

# Directs user to forest level
func _on_forestlevel_pressed() -> void:
	TransitionScreen.change_scene("res://Stages/A_Forest/Forest01.tscn")
