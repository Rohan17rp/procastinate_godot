extends KinematicBody2D

onready var player = get_parent().get_node("Player")
var speed = 40

func _physics_process(delta):
	look_at(player.global_position)
	move_and_slide(Vector2(speed, 0).rotated(rotation))

	if get_slide_count() > 0:
		for i in range (get_slide_count()):
			if "Player" in get_slide_collision(i).collider.name:
				GlobalWorld.score = 0
				get_slide_collision(i).collider.dead()
