extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_object_found(item_name: Variant) -> void:
	print("Hooray, you found the " + item_name)
	_toggle_checkmark(item_name)
	
func _toggle_checkmark(item_name : Variant) -> void:
	# update search list UI to show that item has been found by unhiding the checkmark corresponding to the item
	if item_name == "photofrogs":
		$searchlist/photofrogs/checkmark.visible = not $searchlist/photofrogs/checkmark.visible
	elif item_name == "rubberducky":
		$searchlist/rubberducky/checkmark.visible = not $searchlist/rubberducky/checkmark.visible
	elif item_name == "sleepingfox":
		$searchlist/sleepingfox/checkmark.visible = not $searchlist/sleepingfox/checkmark.visible
	elif item_name == "musicduck":
		$searchlist/musicduck/checkmark.visible = not $searchlist/musicduck/checkmark.visible
