extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_network_master():
		$VBoxContainer/QuestionPanel.text = "a"
		$VBoxContainer/HBoxContainer/Answer.text = "b"
	else:
		$VBoxContainer/QuestionPanel.text = "b"
		$VBoxContainer/HBoxContainer/Answer.text = "a"
	
	
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnswerButton1_pressed():
	pass # Replace with function body.


func _on_AnswerButton2_pressed():
	pass # Replace with function body.


func _on_AnswerButton3_pressed():
	pass # Replace with function body.


func _on_AnswerButton4_pressed():
	pass # Replace with function body.