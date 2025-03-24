# extends Node2D
extends Area2D

signal object_found(item_name: String)

@export var item_name : String
@export var item_texture : Texture2D
@export var use_polygon_collision := false

# @onready var sprite : Sprite2D = $Sprite2D
@onready var shape = $CollisionShape2D
@onready var polygon = $CollisionPolygon2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = item_texture
	shape.disabled = use_polygon_collision
	polygon.disabled = not use_polygon_collision

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
