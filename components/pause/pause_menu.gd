extends Control

var timerExpired = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('pause'):
		if self.visible == false:
			self.visible = true
			timerExpired = false
			$Timer.start(2)
			print('timer started')
		elif timerExpired == true:
			self.visible = false


func _on_timer_timeout():
	timerExpired = true


func _on_quit_button_pressed():
	get_tree().quit()
