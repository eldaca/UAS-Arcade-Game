extends Control

func _ready():
	pass 
	
func _on_BackToMenu_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")
	

func _on_BackToMenu_mouse_entered():
	$Click.play()
