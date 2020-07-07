extends Control

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

func update_question_panel_master():
	$VBoxContainer/QuestionPanel.text = "1. What's your favorite childhood memory?"
	
func check_answer_button_pressed():
	pass

func update_question_panel_not_master():
	Question_panel.text = "1. What's your "+"partner`s"+"favorite childhood memory?"


func _ready():
	if is_network_master():
		update_question_panel_master()
	else:
		update_question_panel_not_master()
		

func pick_question():
	randomize()
	current_question = template[randi() % template.size()]
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	passpass # Replace with function body.


func _on_Answer1Button_pressed():
	$VBoxContainer/HBoxContainer/Answer1.text = "First kiss"
	rpc('_shoot')

func _on_Answer2Button_pressed():
	$VBoxContainer/HBoxContainer2/Answer2.text = "First gift"

func _on_Answer3Button_pressed():
	$VBoxContainer/HBoxContainer3/Answer3.text = "Favorite toy"

func _on_Answer4Button_pressed():
	$VBoxContainer/HBoxContainer4/Answer4.text = "none of the above"
	

sync func _shoot():
	if is_network_master():
		$VBoxContainer/HBoxContainer4/Answer4.text = "master"
	elif not is_network_master():
		$VBoxContainer/HBoxContainer4/Answer4.text = "shoot"