extends Node2D

func _ready():
	$Play.text = Global.playText

func _on_Play_pressed():
	var _target = get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
