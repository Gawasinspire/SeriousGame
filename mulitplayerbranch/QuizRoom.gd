extends Control

var questions_1 = [
		[1, ' What is your favorite childhood memory?', ['First cycle', ' Summer vacation',' Street games','None']],
		[1, ' What do guess, What could be your partners favorite childhood memory?', [' First cycle', ' Summer vacation',' Street games','None']], 
        [2, ' If you could change anything about your past, would you and what would it be?', ['Studied well', ' Polite to parents',' Change my professions','None']], 
        [2, ' If you could change anything about your partners past, what would it be?', ['Studied well', ' Polite to parents',' Change my professions','None']], 
		[3, ' What is the best advice a family member gave you growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang','None']],
		[3, ' What could be the best advice that a family member gave your partner growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang','None']],
		[4, ' What is your first dream job?', [' Marine Engineer', ' Doctor',' CEO','None']],
		[4, ' What do think, your partners first dream job could be?',[' Marine Engineer', ' Doctor',' CEO','None']],
		[5, ' Have you ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream','None']],
		[5, ' Have your partner ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream','None']],
		[6, ' What is your proudest moment?', [' Good child to parents', ' Achievement in education',' Having own business','None']],
		[6, ' What do think, that your partners proudest moment could be?', [' Good child to parents', ' Achievement in education',' Having own business','None']],
		[7, ' When have you felt the most challenged?', [' At school times', ' At university exams','  At jobless time','None']],
		[7, ' What do think, When your partners could have been felt the most challenged?', [' At school times', ' At university exams','  At jobless time','None']],
		[8, ' Who has been a big influence on you?', [' My partner', ' my parents',' my brother','None']],
		[8, ' Who has been a big influence on your partners?', [' My partner', ' my parents',' my brother','None']],
		[9, ' what is the hardest lesson you have ever had to learn?', [' Grateful', ' Time management',' Being independent','None']],
		[9, ' what is the hardest lesson your partner ever had to learn?', [' Grateful', ' Time management',' Being independent','None']],
		[10, ' Do you have any weird habits that I do not know about?', [' holding something to sleep', ' walking while sleeping',' Weird food habits','None']],
		[10, ' Do your partner have any weird habits that I do not know about?', [' holding something to sleep', ' walking while sleeping',' Weird food habits','None']],
		[11, ' what is your earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom','None']],
		[11, ' what is your partners earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom','None']]
		]

var questions_2 = [[1, 'What do guess, What could be your partners favorite childhood memory?', [' First cycle', ' Summer vacation',' Street games',' None']], 
		[1, ' What is your favorite childhood memory?', ['First cycle', ' Summer vacation',' Street games',' None']], 
        [2, 'If you could change anything about your partners past, would you and what would it be?', ['Studied well', ' Polite to parents',' Change my professions',' None']], 
        [2, 'If you could change anything about your past, would you and what would it be?', ['Studied well', ' Polite to parents',' Change my professions',' None']], 
		[3, ' What could be the best advice that a family member gave your partner growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang',' None']],
		[3, ' What is the best advice a family member gave you growing up?', [' Money is everything', ' Education is the most important',' Karma is a boomerang',' None']],
		[4, ' What do think, your partners first dream job could be?',[' Marine Engineer', ' Doctor',' CEO',' None']],
		[4, ' What was your first dream job?', [' Marine Engineer', ' Doctor',' CEO',' None']],
		[5, ' Have your partner ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream',' None']],
		[5, ' Have you ever given up on a dream? What was it?', [' All the time', ' Sometimes',' Dont have a dream',' None']],
		[6, ' What do think, that your partners proudest moment could be?', [' Good child to parents', ' Achievement in education',' Having own business',' None']],
		[6, ' What is your proudest moment?', [' Good child to parents', ' Achievement in education',' Having own business',' None']],
		[7, ' When have your partners felt the most challenged?', [' At school times', ' At university exams','  At jobless time',' None']],
		[7, ' What do think, When your partners could have been felt the most challenged?', [' At school times', ' At university exams','  At jobless time',' None']],
		[8, ' Who has been a big influence on your partners?', [' My partner', ' my parents',' my brother',' None']],
		[8, ' Who has been a big influence on you?', [' My partner', ' my parents',' my brother',' None']],
		[9, ' what is the hardest lesson your partner ever had to learn?', [' Grateful', ' Time management',' Being independent',' None']],
		[9, ' what is the hardest lesson you have ever had to learn?', [' Grateful', ' Time management',' Being independent',' None']],
		[10, ' Do your partner have any weird habits that no one knows except you?', [' holding something to sleep', ' walking while sleeping',' Weird food habits',' None']],
		[10, ' Do you have any weird habits  that no one knows?', [' holding something to sleep', ' walking while sleeping',' Weird food habits',' None']],
		[11, ' what is your partners earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom',' None']],
		[11, ' what is your earliest memory?', [' horror move in cinema', ' First day to school',' baking cake with mom','None']]
		]

onready var timer = get_node("Timer")
onready var Question_panel = $VBoxContainer/QuestionPanel 
var x = 0
var num = 0 
var scores = 0
var wait = "wait"
var answer = "choose your choice"
var finish = "your score"
var master1 = "player 1 answering"
var master2 = "player 2 answering"
var uscore = "yourscore"
var mas = 'm'
var nmas = 'n'
var master_answer1 = false
var master_answer2 = false
var master_answer3 = false
var master_answer4 = false

var not_master_answer1 = false
var not_master_answer2 = false
var not_master_answer3 = false
var not_master_answer4 = false
 
#var waitfortimer = false

func update_question_panel_master(num):
	$VBoxContainer/QuestionPanel.text = questions_1[num][1]
	 


func update_question_panel_not_master(num):
	Question_panel.text = questions_2[num][1]


func _ready():
	add_to_group("Quizroom")
	#update_score()
	pick_question(num)
	pick_answer(num)
	timer.start()
	$Status2.visible = false


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
	$VBoxContainer/HBoxContainer2/Answer2.text = questions_1[num][2][1]
	$VBoxContainer/HBoxContainer3/Answer3.text = questions_1[num][2][2]
	$VBoxContainer/HBoxContainer4/Answer4.text = questions_1[num][2][3]
	
	 

func update_answer_panel_not_master(num):
	$VBoxContainer/HBoxContainer/Answer1.text = questions_1[num][2][0]
	$VBoxContainer/HBoxContainer2/Answer2.text = questions_1[num][2][1]
	$VBoxContainer/HBoxContainer3/Answer3.text = questions_1[num][2][2]
	$VBoxContainer/HBoxContainer4/Answer4.text = questions_1[num][2][3]
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	passpass # Replace with function body.
func update_status(status):
	$Status.text = status

func update_status2(status):
	$Status2.text = ":" + str(status) 
	

func _on_Answer1Button_pressed():
	if is_network_master():
		master_answer1 = true
		master_answer2 = false
		master_answer3 = false
		master_answer4 = false
		update_status(master1)
		
		#$Control/bannerHanging/HBoxContainer/score.text = "2"
	elif !is_network_master():
		not_master_answer1 = true
		not_master_answer2 = false
		not_master_answer3 = false
		not_master_answer4 = false
		update_status(master2)
		

	
	
	#if master wait timer to end then inform not_master  update score
	#if not_master wait timer to end then inform master  update score
	
	#rpc('_shoo')

func _on_Answer2Button_pressed():
	if is_network_master():
		master_answer1 = false
		master_answer2 = true
		master_answer3 = false
		master_answer4 = false
		update_status(master1)
	elif !is_network_master():
		not_master_answer1 = false
		not_master_answer2 = true
		not_master_answer3 = false
		not_master_answer4 = false
		update_status(master2)

func _on_Answer3Button_pressed():
	if is_network_master():
		master_answer1 = false
		master_answer2 = false
		master_answer3 = true
		master_answer4 = false
		update_status(master1)
	elif !is_network_master():
		not_master_answer1 = false
		not_master_answer2 = false
		not_master_answer3 = true
		not_master_answer4 = false
		update_status(master2)
		

func _on_Answer4Button_pressed():
	if is_network_master():
		master_answer1 = false
		master_answer2 = false
		master_answer3 = false
		master_answer4 = true
		update_status(master1)
	elif !is_network_master():
		not_master_answer1 = false
		not_master_answer2 = false
		not_master_answer3 = false
		not_master_answer4 = true
		update_status(master2)
		

func controller(stime):
	if x>stime:
		if num%2 == 0:
			if master_answer1:
				rpc('answer1',mas)
				master_answer1 = false
			elif master_answer2:
				rpc('answer2',mas)
				master_answer2 = false
			elif master_answer3:
				rpc('answer3',mas)
				master_answer3 = false
			elif master_answer4:
				rpc('answer4',mas)
				master_answer4 = false
		else:
			if not_master_answer1:
				rpc('answer1',nmas)
				master_answer1 = false
			elif not_master_answer2:
				rpc('answer2',nmas)
				master_answer2 = false
			elif not_master_answer3:
				rpc('answer3',nmas)
				master_answer3 = false
			elif not_master_answer4:
				rpc('answer4',nmas)
				master_answer4 = false
		if num < 20:
			num +=1
			if is_network_master():
				update_status(answer)
			elif !is_network_master():
				update_status(answer)
			pick_question(num)
			pick_answer(num) 
		elif num >= 20:
			$Status2.visible = true
			update_status(uscore)
			update_status2(scores)
			timer.set_wait_time(5)
			get_tree().change_scene('res://Gameover.tscn')
			num = 0
		x=0

#sync func _shoo():
func _process(delta):
	$Timer/Seconds.text = str(x)
	controller(10)

sync func update_score(v):
	if is_network_master():
		if v == 'm':
			scores +=1
			get_tree().call_group("GUI","score",scores)
	elif !is_network_master():
		if v == 'n':
			scores +=1
			get_tree().call_group("GUI","score",scores)

sync func _on_Timer_timeout():
	x += 1

sync func answer1(morn):
	if not_master_answer1:
		rpc('update_score',morn)
		not_master_answer1 = false

sync func answer2(morn):
	if not_master_answer2:
		rpc('update_score',morn)
		not_master_answer2 = false

sync func answer3(morn):
	if not_master_answer3:
		rpc('update_score',morn)
		not_master_answer3 = false

sync func answer4(morn):
	if not_master_answer4:
		rpc('update_score',morn)
		not_master_answer4 = false