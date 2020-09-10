extends Area2D

export(String, FILE, "*.tscn") var next_level

func _ready():
	randomize()
	var x = rand_range(10, 500)
	var y = rand_range(10, 290)
	set_position(Vector2(x, y))

func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		get_tree().change_scene(next_level)
