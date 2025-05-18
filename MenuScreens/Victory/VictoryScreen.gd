extends Control

@export var is_paused = false

func _on_resume_pressed() -> void:
	self.hide()
	is_paused = false
	Engine.time_scale = 1


func _on_quit_pressed() -> void:
	self.hide()
	is_paused = false
	Engine.time_scale = 1
	TransitionScreen.change_scene("res://MenuScreens/LevelSelect/level_select.tscn")
