extends Camera2D

@export var zoomSpeed : float = 5

var zoomTarget : Vector2

var dragStartMousePos = Vector2.ZERO
var dragStartCameraPos = Vector2.ZERO
var isDragging : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# set zoomTarget to default zoom value of camera
	zoomTarget = zoom
	position_smoothing_enabled = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Zoom(delta) # keep zoom speed consistent
	SimplePan(delta)
	ClickAndDrag()
	

func Zoom(delta) -> void:
	if Input.is_action_just_pressed("camera_zoom_in"):
		zoomTarget *= 1.2
	
	if Input.is_action_just_pressed("camera_zoom_out"):
		zoomTarget *= 0.8
	
	# Clamp zoomTarget by min and max zoom values
	var minZoom = Vector2(1.0, 1.0)
	var maxZoom = Vector2(1.6, 1.6)
	zoomTarget = zoomTarget.clamp(minZoom, maxZoom)
		
	zoom = zoom.slerp(zoomTarget, zoomSpeed * delta)
	

#WASD panning
func SimplePan(delta) -> void:
	var moveAmount = Vector2.ZERO
	
	if Input.is_action_pressed("camera_move_right"):
		position.x += 5
	
	if Input.is_action_pressed("camera_move_left"):
		position.x -= 5
	
	if Input.is_action_pressed("camera_move_up"):
		position.y -= 5
	
	if Input.is_action_pressed("camera_move_down"):
		position.y += 5
		
	# Fixes the issue of movement speed difference due to extreme zoom in/out
	moveAmount = moveAmount.normalized()
	position += moveAmount * delta * 1500 * (1/zoom.x)

# Middle mouse panning
func ClickAndDrag() -> void:
	if !isDragging and Input.is_action_just_pressed("camera_pan"):
		dragStartMousePos = get_viewport().get_mouse_position()
		dragStartCameraPos = position
		isDragging = true
		
	if isDragging and Input.is_action_just_released("camera_pan"):
		isDragging = false
		
	if isDragging:
		var moveVector = get_viewport().get_mouse_position() - dragStartMousePos
		position = dragStartCameraPos - moveVector * (1/zoom.x)
		
