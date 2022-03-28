extends Area2D


func _on_Exit_body_entered(body):
	if body.name == "Player":
		Global.current_position = Vector2(200,200)
		body.position = Global.current_position
		if name == "Exit_to_2":
			Global.current_level = "Level2.tscn"
			var _target = get_tree().change_scene("res://Levels/Level2.tscn")
		if name == "Exit_to_3":
			Global.current_level = "Level3.tscn"
			var _target = get_tree().change_scene("res://Levels/Level3.tscn")
		if name == "Exit_to_4":
			Global.current_level = "Level4.tscn"
			var _target = get_tree().change_scene("res://Levels/Level4.tscn")
		if name == "Exit_to_5":
			Global.current_level = "Level5.tscn"
			var _target = get_tree().change_scene("res://Levels/Level5.tscn")
		if name == "Exit_to_6":
			Global.GameOverText = "Congratulations!\nYou win!"
			var _target = get_tree().change_scene("res://Levels/Game_Over.tscn")
