extends CanvasLayer

# Store path to the next scene to load
@export_file("*.tscn") var next_scene_path: String

func _ready():
	ResourceLoader.load_threaded_request(next_scene_path)
	
func _process(delta):
	# Check that scene finished loading
	if ResourceLoader.load_threaded_get_status(next_scene_path) == ResourceLoader.THREAD_LOAD_LOADED:
		# Make sure this is not called multiple times
		set_process(false)
		# Set a pseudo delay so that user recieves visual feedback of scene loading
		await get_tree().create_timer(1).timeout
		var new_scene: PackedScene = ResourceLoader.load_threaded_get(next_scene_path)
		get_tree().change_scene_to_packed(new_scene)
