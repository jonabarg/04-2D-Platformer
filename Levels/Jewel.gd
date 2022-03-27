extends Area2D

func _on_Timer_timeout():
	$Animation.playing = true


func _on_Jewel_body_entered(body):
	if body.name == "Player":
		Global.jewels += 1
		queue_free()


func _on_Animation_animation_finished():
	$Animation.playing = false
