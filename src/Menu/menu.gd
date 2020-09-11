extends Control

export(String, FILE, "*.tscn") var next_level

func _ready():
	GlobalWorld.highScore = GlobalWorld.highScore if GlobalWorld.highScore > GlobalWorld.score else GlobalWorld.score
	$Popup/Score.text = str(GlobalWorld.score)
	$Popup/HighScore.text = str(GlobalWorld.highScore)
	$Popup.show()


func _on_Quit_pressed():
	get_tree().quit()


func _on_PlayAgain_pressed():

	GlobalWorld.score = 0
	get_tree().change_scene("res://src/World.tscn")
