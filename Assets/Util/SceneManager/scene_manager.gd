extends Node

# preload sfx
var victory = preload("res://Assets/Audio/SFX/found_it_long.ogg")
var item_found = preload("res://Assets/Audio/SFX/item_found.ogg")


func play_sfx(sfx_name: String) -> void:
	var stream = null
	if sfx_name == "item_found":
		stream = item_found
	elif sfx_name == "victory":
		stream = victory
	else:
		print("You have not added this sound effect yet. Declare it in scene manager.")
	
	var aud_stream_player = AudioStreamPlayer.new()
	aud_stream_player.stream = stream
	aud_stream_player.name = "SFX"
	
	add_child(aud_stream_player)
	aud_stream_player.play()
