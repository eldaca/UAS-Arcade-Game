extends Label

var coins = 0

func _ready():
	text = String(coins)
	

func _on_energyCollect():
	coins = coins + 1
	_ready()
	if coins == 10:
		$Timer.start() 


func _on_Timer_timeout():
	get_tree().change_scene("res://menu/EndingScene.tscn")
