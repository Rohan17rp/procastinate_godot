extends Node2D

var enemy = preload("res://src/Enemy.tscn")
var obstacle = preload("res://src/Obstacles.tscn")
var score = 0
var highScore = 0

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


func _on_ObstacleSpawnTimer_timeout():
	var x
	var y
	var size = Vector2(0, 0)
	randomize()
	var new_obstacle = obstacle.instance()
	x = rand_range(10, 500)
	y = rand_range(10, 290)
	size.x = rand_range(0.5, 2)
	size.y = size.x
	new_obstacle.set_scale(size)
	new_obstacle.set_position(Vector2(x, y))
	add_child(new_obstacle)
