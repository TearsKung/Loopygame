extends Control
var Story = "One day %s comes to woods. \nA %s ask him \nWhat do you like %s \nand then i came out when say %s " 
var question = []
var answer = []
var pre = 0
func _ready():
	
	question.append("Welcome to this game \nWhat is your name?")
	question.append("who do you hate most?")
	question.append("What is your faverite Food")
	question.append("what is your catchword")
	$VBoxContainer/DisplayText.text = question[0]
	
func _on_okButton_pressed(): #ใช้ if ช่วยเอา
	if pre == 0:
		answer.append($"PlayerText".text)
		$VBoxContainer/DisplayText.text = question[1]
		$"PlayerText".text = ""
		
	if pre == 1:
		answer.append($"PlayerText".text)
		$VBoxContainer/DisplayText.text = question[2]
		$"PlayerText".text = ""
		
	if pre == 2:
		answer.append($"PlayerText".text)
		$VBoxContainer/DisplayText.text = question[3]
		$"PlayerText".text = ""
	
	if pre == 3:
		answer.append($"PlayerText".text)
		$"PlayerText".text = ""
		$VBoxContainer/DisplayText.text = Story % answer
	pre = pre + 1
	print(answer)
	#$VBoxContainer/DisplayText.text = Story % answer