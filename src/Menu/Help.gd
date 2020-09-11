extends Control



func _on_StartGame_pressed():
	get_tree().change_scene("res://src/World.tscn")

func _on_MainMenu_pressed():
	get_tree().change_scene("res://src/Menu/tutorial.tscn")
