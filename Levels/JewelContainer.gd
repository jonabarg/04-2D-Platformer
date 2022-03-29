extends Node2D

var positions = [null,null,null]
var jewels
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.ogJewelPositions = getJewels()
	if Global.jewelPositions == null:
		Global.jewelPositions = getJewels()
	else:
		positions = Global.jewelPositions
	removeJewels()
	


func getJewels():
	jewels = get_children()
	var i = 0
	for j in range(jewels.size()):
		positions[j] = jewels[j].position
	return positions
	
func removeJewels():
	jewels = get_children()
	for j in range(jewels.size()):
		if positions[j] == null:
			remove_child(jewels[j])
			jewels[j] = null
