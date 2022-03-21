extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var attack = load("res://Attack.tscn")
var inAttack = false


func _ready():
	yield(player, "ready")
	
func start():
	player.set_animation("Attacking")
	player.set_animation("Sword")
	
func physics_process(_delta):
	if not inAttack:
		player.attack = attack.instance()
		player.add_child(player.attack)
		$Timer.start()
		inAttack = true
		player.attack.flip()


func _on_Timer_timeout():
	SM.set_state("Moving")
	player.remove_child(player.attack)
	inAttack = false
