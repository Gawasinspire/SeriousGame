extends Node2D

var template = [
		{"options" :  ["Eric","Informatik","Godot"],
		"question" : "0Once upon a time %s, a %s Student entered a Village called Clausthal. The Charming boy has no friends in mountain village clausthal but eagerly searching for one new friend. He is interested in learning %s"
		},
		{"question": "1There once was %s called %s who searched far and wide for wide for the mythical %s noun of %s",
		"options" : ["a noun","a name","an adjective", "another name"]
		},
		{"question": "2There once was %s called %s who searched far and wide for wide for the mythical %s noun of %s",
		"options" : ["a noun","a name","an adjective", "another name"]
		}
		]
var current_question  

var player_words = []

onready var Question_panel = $VBoxContainer/QuestionPanel 
var a = 1

#var num = 42


func _ready():
	if is_network_master():
		pick_question()
		Question_panel.text = "What is your favourite fruit?"
		$VBoxContainer/HBoxContainer/Answer1.text = "apple"
		$VBoxContainer/HBoxContainer2/Answer2.text = "Mango"
		$VBoxContainer/HBoxContainer3/Answer3.text = "Banana"
		$VBoxContainer/HBoxContainer4/Anwer4.text = "None"
	else:
		Question_panel.text = "What is your"+ "partners" +"favourite fruit?"
		$VBoxContainer/HBoxContainer/Answer1.text = "apple"
		$VBoxContainer/HBoxContainer2/Answer2.text = "Mango"
		$VBoxContainer/HBoxContainer3/Answer3.text = "Banana"
		$VBoxContainer/HBoxContainer4/Anwer4.text = "None"
		

func pick_question():
	randomize()
	current_question = template[randi() % template.size()]

func update_score():
	$GUI/Control/bannerHanging/HBoxContainer/score.text = "1"
		
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AnswerButton1_pressed():
	if is_network_master():
		$VBoxContainer/HBoxContainer/Answer1.text = "jjj"

	

func _on_AnswerButton2_pressed():
	pass # Replace with function body.


func _on_AnswerButton3_pressed():
	pass # Replace with function body.


func _on_AnswerButton4_pressed():
	pass # Replace with function body.