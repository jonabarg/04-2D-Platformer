extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var attack = load("res://Attack.tscn")


func _ready():
	yield(player, "ready")
	
func start():
	player.position = Vector2(200,200)
	print("e")

func physics_process(_delta):
	print("e")
	if Input.is_action_pressed("attack"):
		print("e")
		SM.set_state("Attacking")
		var attacking = attack.instance()
		attacking.position = player.position
