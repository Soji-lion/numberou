extends Node2D

var random = RandomNumberGenerator.new()
var password_digit1 = str(randi()%9+1)
var password_digit2 = str(randi()%9+1)
var password_digit3 = str(randi()%9+1)
var password_digit4 = str(randi()%9+1)
var temp1 = ""
var temp2 = ""
var temp3 = ""
var temp4 = ""


func new_game():
	password_digit1 = str(randi()%9+1)
	password_digit2 = str(randi()%9+1)
	password_digit3 = str(randi()%9+1)
	password_digit4 = str(randi()%9+1)
	temp1 = ""
	temp2 = ""
	temp3 = ""
	temp4 = ""
	get_node("Label").text = password_digit1+password_digit2+password_digit3+password_digit4
func print_message(message, delay):
	get_node("terminal").print_text(message, delay)
	
	
func _ready():
	get_node("Label").text = password_digit1+password_digit2+password_digit3+password_digit4
	print_message("Activating password_hacker2000
	
Can you try to hack my 4-digit password?", 0.01)
	pass
func _process(delta: float) -> void:
	pass

func check_password(int1,int2,int3,int4):
	temp1 = ""
	temp2 = ""
	temp3 = ""
	temp4 = ""
	if int1==password_digit1:
		if int1==password_digit2 || int1==password_digit3 || int1==password_digit4:
			temp1 = "greenyellow"
		else:
			temp1 = "green"
	if int2 == password_digit2:
		if int2==password_digit1 || int2==password_digit3 || int2==password_digit4:
			temp2 = "greenyellow"
		else:
			temp2 = "green"
	if int3==password_digit3:
		if int3==password_digit1 || int3==password_digit2 || int3==password_digit4:
			temp3 = "greenyellow"
		else:
			temp3 = "green"
	if int4 == password_digit4:
		if int4==password_digit1 || int4==password_digit2 || int4==password_digit3:
			temp4 = "greenyellow"
		else:
			temp4 = "green"
		
	if temp1!="green" && temp1!="greenyellow":
		if temp2!="green"&&temp2!="greenyellow"&&int2==password_digit1:
			temp2="yellow"
		if temp3!="green"&&temp3!="greenyellow"&&int3==password_digit1:
			temp3="yellow"
		if temp4!="green"&&temp4!="greenyellow"&&int4==password_digit1:
			temp4="yellow"
	if temp2!="green" && temp2!="greenyellow":
		if temp1!="green"&&temp1!="greenyellow"&&int1==password_digit2:
			temp1="yellow"
		if temp3!="green"&&temp3!="greenyellow"&&int3==password_digit2:
			temp3="yellow"
		if temp4!="green"&&temp4!="greenyellow"&&int4==password_digit2:
			temp4="yellow"
	if temp3!="green" && temp3!="greenyellow":
		if temp2!="green"&&temp2!="greenyellow"&&int2==password_digit3:
			temp2="yellow"
		if temp1!="green"&&temp1!="greenyellow"&&int1==password_digit3:
			temp1="yellow"
		if temp4!="green"&&temp4!="greenyellow"&&int4==password_digit3:
			temp4="yellow"
			
	if temp4!="green" && temp4!="greenyellow":
		if temp2!="green"&&temp2!="greenyellow"&&int2==password_digit4:
			temp2="yellow"
		if temp3!="green"&&temp3!="greenyellow"&&int3==password_digit4:
			temp3="yellow"
		if temp1!="green"&&temp4!="greenyellow"&&int1==password_digit4:
			temp1="yellow"
			
	if temp1!="green"&&temp1!="greenyellow"&&temp1!="yellow":
		temp1="red"
			
	if temp2!="green"&&temp2!="greenyellow"&&temp2!="yellow":
		temp2="red"
			
	if temp3!="green"&&temp3!="greenyellow"&&temp3!="yellow":
		temp3="red"
			
	if temp4!="green"&&temp4!="greenyellow"&&temp4!="yellow":
		temp4="red"
	if (temp1=="green" || temp1=="greenyellow") && (temp2=="green" || temp2=="greenyellow") \
	&& (temp3=="green" || temp3=="greenyellow") && (temp4=="green" || temp4=="greenyellow"):
		temp1="blue"
	return [temp1, temp2, temp3, temp4]
