extends Node2D

@onready var searchlist = $CanvasLayer/Control/Panel/MarginContainer/searchlist/HBoxContainer
@onready var scoreLabel = $CanvasLayer/Control/Panel/Score

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var count = Global.Data[self.name].size()
	scoreLabel.text = "Found: " + str(count) + "/40"
	
# Triggers when hidden object emits a "found" signal
func on_object_found(object_name: String) -> void:
	print("Found: " + object_name)
	
	# Add name of object to the dictionary of found objects
	Global.Data[self.name].append(object_name)
	print(Global.Data[self.name])
	# Calls search list UI updating function
	update_searchlist(object_name)
	
	# Increases the sum of found objects UI label

# Updates search list UI to check off the found item
func update_searchlist(object_name: String) -> void:
	print("Let's update the search list UI!")
	var icon_target = object_name + "_icon"
	
	if searchlist.has_node(icon_target):
		var icon = searchlist.get_node(icon_target) as TextureRect
		
		icon.modulate = Color(0, 1, 0)    # tint green
		
		icon.pivot_offset = icon.size * 0.7
		var tween = icon.create_tween()
		tween.set_loops(1)
		
		# wiggle right
		tween.tween_property(icon, "rotation_degrees", 5, 0.5)
		# wiggle left
		tween.tween_property(icon, "rotation_degrees", -5, 0.1)
		# back to center
		tween.tween_property(icon, "rotation_degrees", 0, 0.05)
		
	else:
		push_warning("No UI icon found for: %s" % icon_target)
		return
		

func increment_sum() -> void:
	pass

# Pause game world when player clicks pause button
func _on_pause_pressed() -> void:
	print("Pause Button was clicked.")
	get_tree().paused = true
	
# Un-pause game if player clicks resume game button
func _on_resume_pressed()-> void:
	get_tree().paused = false

# Quit to title
func _on_quit_to_title()-> void:
	TransitionScreen.change_scene("res://MenuScreens/MainMenu/main_menu.tscn")
