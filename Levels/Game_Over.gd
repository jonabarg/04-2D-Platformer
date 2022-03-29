extends Control

func _on_Play_Again_pressed():
	Global.jewels = 0
	Global.lives = 10
	Global.GameOverText = ""
	Global.GameOver = false
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
	

func _physics_process(_delta):
	$Label.text = Global.GameOverText
	$Label2.text = "Score: " + str(Global.jewels * Global.lives)
