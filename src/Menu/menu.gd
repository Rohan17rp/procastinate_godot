extends Control

export(String, FILE, "*.tscn") var next_level

func _ready():
	$Popup/Score.text = "SCORE :  " + str(GlobalWorld.score)
	$Popup.show()


func _on_Quit_pressed():
	get_tree().quit()


func _on_PlayAgain_pressed():
	GlobalWorld.score = 0
	get_tree().change_scene("res://src/World.tscn")
