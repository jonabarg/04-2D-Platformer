extends CanvasLayer


func _physics_process(_delta):
	updateJewels()
	updateLives()
	
func updateJewels():
	$Jewels.text = "Jewels: " + str(Global.jewels)

func updateLives():
	$Lives.text = "Lives: " + str(Global.lives)
