extends Control


func _on_start_pressed() -> void:
	print("Pressed start button")
	TransitionScreen.change_scene("res://MenuScreens/LevelSelect/level_select.tscn")


func _on_quit_pressed() -> void:
	print("Pressed quit")
	get_tree().quit()
