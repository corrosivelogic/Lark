extends Node2D

func _ready():
	#GameState.load_game()
	$"AudioStreamPlayer".play()
	if (!GameState3.music3):
		$"AudioStreamPlayer".stream_paused = !$"AudioStreamPlayer".stream_paused
		GameState3.music3 = !$"AudioStreamPlayer".stream_paused
		$"TextureButton4".texture_normal = load("res://assets/Volumeon.png")
		$"TextureButton".texture_pressed = load("res://assets/Volumeoff.png")
 


func _on_TextureButton4_toggled(button_pressed):
	$"AudioStreamPlayer".stream_paused = !$"AudioStreamPlayer".stream_paused
	GameState3.music3 = !$"AudioStreamPlayer".stream_paused
	#GameState.save_game()
	pass # Replace with function body.
