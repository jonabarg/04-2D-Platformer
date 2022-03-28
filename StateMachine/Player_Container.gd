extends Node2D

onready var Player = load("res://Player/Player.tscn")
#var starting_position = Vector2(200,200)
var player

func _physics_process(_delta):
	if not has_node("Player"):
		player = Player.instance()
		player.position = Global.current_position
		add_child(player)
	Global.current_position = player.position
