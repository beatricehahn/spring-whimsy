extends Area2D

@export var item_name : String = "UnnamedItem"

var is_clicked = false

signal is_found(item_name)

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_released("click") and mouse_entered:
		if !is_clicked:
			is_clicked = true
			emit_signal("is_found", self.name)
			SceneManager.play_sfx("item_found")
			
#func _input(event):
	## Check that mouse click was released while mouse was still in collision shape
	#if event.is_action_released("click"):
		#if !is_found:
			#is_found = true
			#mark_as_found()
		
