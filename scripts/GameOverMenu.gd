extends Control


func _ready():
	$VBoxContainer/RetryButton.grab_focus()


func _on_RetryButton_pressed():
	get_tree().change_scene("res://levels/Level-1.tscn")
	

func _on_QuitButton_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_RetryButton_mouse_entered():
	$Click.play()


func _on_QuitButton_mouse_entered():
	$Click.play()
