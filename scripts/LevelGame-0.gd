extends Spatial

func _on_PauseButton_pressed():
	$UI/PauseMenuScreen/Click2.play()
	get_node("UI/PauseMenuScreen").set_exclusive(true)
	get_node("UI/PauseMenuScreen").popup()
	get_tree().set_pause(true)

func _on_Resume_pressed():
	get_node("UI/PauseMenuScreen").hide()
	get_tree().set_pause(false)


func _on_enemy_body_entered(body):
	$enemy/EnemyHit.play()
	$enemy2/EnemyHit.play()
	$enemy3/EnemyHit.play()
	$enemy4/EnemyHit.play()
	$enemy5/EnemyHit.play()
	get_tree().change_scene("res://menu/GameOverMenu.tscn")


func _on_PauseButton_mouse_entered():
	$Click.play()

