extends Control

var questions_1 = [[1, ' What is your favorite childhood memory?', ['First cycle', ' Summer vacation',' Street games','None']], 
        [2, 'If you could change anything about your past, would you and what would it be?', ['Studied well', ' Polite to parents',' Change my professions','None']], 
        [3, ' What is the best advice a family member gave you growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang','None']],
		[4, ' What was your first dream job, and is it still your dream job?', [' Marine Engineer', ' Doctor',' CEO','None']],
		[5, ' Have you ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream','None']],
		[6, ' What is your proudest moment?', [' Good child to parents', ' Achievement in education',' Having own business','None']],
		[7, ' When have you felt the most challenged?', [' At school times', ' At university exams','  At jobless time','None']],
		[8, ' Who has been a big influence on you?', [' My partner', ' my parents',' my brother','None']],
		[9, ' what is the hardest lesson you have ever had to learn?', [' Grateful', ' Time management',' Being independent','None']],
		[10, ' Do you have any weird habits that I do not know about?', [' holding something to sleep', ' walking while sleeping',' Weird food habits','None']],
		[11, ' what is your earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom','None']]
		]

var questions_2 = [[1, ' What is your partners favorite childhood memory?', [' First cycle', ' Summer vacation',' Street games','None']], 
        [2, 'If you could change anything about your partners past, would you and what would it be?', ['Studied well', ' Polite to parents',' Change my professions','None']], 
        [3, ' What could be the best advice a family member gave your partner growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang','None']],
		[4, ' What was your partners first dream job, and is it still the dream job?',[' Marine Engineer', ' Doctor',' CEO','None']],
		[5, ' Have your partners ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream','None']],
		[6, ' What is your partners proudest moment?', [' Good child to parents', ' Achievement in education',' Having own business','None']],
		[7, ' When have your partners felt the most challenged?', [' At school times', ' At university exams','  At jobless time','None']],
		[8, ' Who has been a big influence on your partners?', [' My partner', ' my parents',' my brother','None']],
		[9, ' what is the hardest lesson your partner ever had to learn?', [' Grateful', ' Time management',' Being independent','None']],
		[10, ' Do your partner have any weird habits that I do not know about?', [' holding something to sleep', ' walking while sleeping',' Weird food habits','None']],
		[11, ' what is your partners earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom','None']]
		]


onready var Question_panel = $VBoxContainer/QuestionPanel 
var num
#var waitfortimer = false

func update_question_panel_master(num):
	$VBoxContainer/QuestionPanel.text = questions_1[num][1]
	 

func check_answer_button_pressed():
	pass

func update_question_panel_not_master(num):
	Question_panel.text = questions_2[num][1]


func _ready():
	num = 0
	pick_question(num)
	pick_answer(num)


func pick_question(num):
	if is_network_master():
		update_question_panel_master(num)
	else:
		update_question_panel_not_master(num)

func pick_answer(num):
	if is_network_master():
		update_answer_panel_master(num)
	else:
		update_answer_panel_not_master(num)

 
func update_answer_panel_master(num):
	$VBoxContainer/HBoxContainer/Answer1.text = questions_1[num][2][0]
	
	 

func update_answer_panel_not_master(num):
	$VBoxContainer/HBoxContainer/Answer1.text = questions_2[num][2][0]
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	passpass # Replace with function body.


func _on_Answer1Button_pressed():
	num = num +1 
	pick_question(num)
	pick_answer(num)
	
	#if master wait timer to end then inform not_master  update score
	#if not_master wait timer to end then inform master  update score
	rpc('_shoo')

func _on_Answer2Button_pressed():
	$VBoxContainer/HBoxContainer2/Answer2.text = "First gift"

func _on_Answer3Button_pressed():
	$VBoxContainer/HBoxContainer3/Answer3.text = "Favorite toy"

func _on_Answer4Button_pressed():
	$VBoxContainer/HBoxContainer4/Answer4.text = "none of the above"
	

sync func _shoo():
	if is_network_master():
		$VBoxContainer/HBoxContainer4/Answer4.text = "master"
	elif not is_network_master():
		$VBoxContainer/HBoxContainer4/Answer4.text = "shoot"

func _on_Timer_timeout():
	pass
