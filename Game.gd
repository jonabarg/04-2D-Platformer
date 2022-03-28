extends Node2D

func _ready():
	$Play.text = Global.playText

func _on_Play_pressed():
	var _target = get_tree().change_scene("res://Levels/" + str(Global.current_level))


func _on_Quit_pressed():
	get_tree().quit()


func _on_Load_pressed():
	var _target = get_tree().change_scene("res://SaveLoad.tscn")
