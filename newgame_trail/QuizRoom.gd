extends Control
var string1 = "who are you"
var string2 = "Hero"
var string3 = "Villain"
var string4 = "Comedian"
var string5 = "None of the above"
var score = 0
var string6 = "Hero"

func _ready():
	print("ask")
	get_node("backgroundEmpty/VBoxContainer/QuestionPanel").text = string1
	get_node("backgroundEmpty/VBoxContainer/Answer1").text = string2
	get_node("backgroundEmpty/VBoxContainer/Answer2").text = string3
	get_node("backgroundEmpty/VBoxContainer/Answer3").text = string4
	get_node("backgroundEmpty/VBoxContainer/Answer4").text = string5
	

func _on_Answer1_pressed():
	pass

func _on_Answer2_pressed():
	pass 

func update_score():
	score = score +1
	get_node("backgroundEmpty/score").text = 1




