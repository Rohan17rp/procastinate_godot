extends Node2D

var enemy = preload("res://src/Enemy.tscn")
var score = 0

func _ready():
	pass



func _on_SpawnTimer_timeout():
	score += 1
	GlobalWorld.score += 1
	var x
	var y
	var size = Vector2(0, 0)
	randomize()
	var new_enemy = enemy.instance()
	x = rand_range(10, 500)
	y = rand_range(10, 290)
	size.x = rand_range(0.1, 0.4)
	size.y = size.x
	new_enemy.set_scale(size)
	new_enemy.set_position(Vector2(x, y))
	add_child(new_enemy)
