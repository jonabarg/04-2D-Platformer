extends Node2D

onready var player = get_node_or_null("/root/Game/Player_Container/Player")

var direction = 0


func flip() :
	if player != null:
		direction = player.direction
	if direction < 0: 
		$AnimatedSpriteLeft.show()
		$AnimatedSpriteLeft.playing = true
		$AnimatedSpriteLeft2.show()
		$AnimatedSpriteLeft2.playing = true
		$AttackRight.disabled = true
		$AttackLeft.disabled = false
	if direction > 0:
		$AnimatedSpriteRight.show()
		$AnimatedSpriteRight.playing = true
		$AnimatedSpriteRight2.show()
		$AnimatedSpriteRight2.playing = true 
		$AttackRight.disabled = false
		$AttackLeft.disabled = true
