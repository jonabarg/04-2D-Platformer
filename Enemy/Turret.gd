extends KinematicBody2D

onready var SM = $StateMachine

var found = false

var turret_pos = 0
export var turret_speed = 0.5
var turret_range = [0,180]
var increasing = true

func _ready():
	randomize()
	turret_pos = (randi() + turret_range[0]) % turret_range[1]
	$State.rect_rotation -= rotation_degrees

func _physics_process(_delta):
	if $State.text != SM.state_name:
		$State.text = SM.state_name

func increase_turret():
	turret_pos += turret_speed
	if turret_pos >= turret_range[1] and increasing:
		increasing = false
	turret_pos = clamp(turret_pos,turret_range[0],turret_range[1])

func decrease_turret():
	turret_pos -= turret_speed
	if turret_pos <= turret_range[0] and not increasing:
		increasing = true
	turret_pos = clamp(turret_pos,turret_range[0],turret_range[1])

func set_turret_angle(ang):
	ang = wrapf(ang,0,360)
	ang = clamp(ang,turret_range[0],turret_range[1])
	$Cannon.rotation_degrees = ang

func set_ray_angle(ang):
	$RayCast2D.rotation_degrees = ang

func update_laser(target,shooting):
	$Laser.points[1] = target
	if shooting:
		$Laser.show()
		$Laser.default_color = Color8(224,49,49)
	else:
		$Laser.hide()
		

func set_mode(m):
	if m == "shooting":
		$Cannon.modulate = Color(1,0.5,0.5,1)
	else:		
		$Cannon.modulate = Color(1,1,1,1)

func _on_Area2D_body_entered(body):
	print(body.name + "/CollisionShape2D")
	get_node_or_null("/root/Game/Player_Container/Player")
	if body.name == 'Player':
		body.die()
		queue_free()
	if body.name == 'Attack':
		queue_free()


func _on_Search_Time_timeout():
	found = true


func _on_Area2D_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name == 'Attack':
		queue_free()
