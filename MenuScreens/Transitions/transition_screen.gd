extends CanvasLayer

@export var animator: AnimationPlayer

func change_scene(target: String):
	animator.play('dissolve')
	get_tree().change_scene_to_file(target)
	animator.play_backwards('dissolve')
