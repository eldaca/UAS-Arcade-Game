extends Area

signal energyCollect

func _ready():
	pass

func _physics_process(delta):
	rotate_y(deg2rad(2))

func _on_energy_body_entered(body):
	if body.name == "MainChara":
		$AnimationPlayer.play("energyanim")
		$Timer.start()
		
func _on_Timer_timeout():
	emit_signal("energyCollect")
	queue_free()

func _on_EnergyCollected_finished():
	$EnergyCollected.play()
