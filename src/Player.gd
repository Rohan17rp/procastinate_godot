extends KinematicBody2D

const ACCELARATION = 50
const MAX_SPEED = 100

var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
	velocity = velocity.normalized() * MAX_SPEED
	velocity = move_and_slide(velocity)
	
func dead():
	$CollisionShape2D.disabled = true
	get_tree().change_scene("res://src/Menu/menu.tscn")
	
