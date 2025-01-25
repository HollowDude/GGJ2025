extends Node2D

@export var speed = 600
var player : CharacterBody2D 
var player_direction
var direction


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if position.y <= 650:
		if TerrainAdapter.check_area_collision(position, 5):
			direction = -TerrainAdapter.get_collision_vector(position, 5)
			position.x += (delta*speed)*direction
		position.y += delta * speed
	else:
		queue_free()


func _on_hit_area_area_entered(area: Area2D) -> void:
	pass # FUNCION DE DANHO
