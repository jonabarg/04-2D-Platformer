extends Node

var death_zone = 1000

var jewels = 0

var lives = 10

var GameOver = false

var GameOverText

var scoreText

var playText = "Play"

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		playText = "Continue"
		var _target = get_tree().change_scene("res://Game.tscn")


var fade = null
var fade_speed = 0.015

var fade_in = true
var fade_out = ""

func _physics_process(_delta):
	if lives < 1 and not GameOver:
		GameOver = true
		GameOverText = "You Died!"
		var _target = get_tree().change_scene("res://Levels/Game_Over.tscn")
			
