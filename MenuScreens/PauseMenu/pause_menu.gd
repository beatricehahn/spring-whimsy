extends Control


func _on_resume_pressed() -> void:
	self.hide()
	Engine.time_scale = 1


func _on_quit_pressed() -> void:
	self.hide()
	Engine.time_scale = 1
	TransitionScreen.change_scene("res://MenuScreens/LevelSelect/level_select.tscn")
