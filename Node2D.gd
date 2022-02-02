extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attempts=0
var number
var n1=0
var n2=0
var n3=0
var n4=0
var digit1
var digit2
var digit3
var digit4
var temp1
var temp2
var temp3
var temp4
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_new_button_up():
	get_node("ColorRect/Control/check").disabled=false
	get_node("ColorRect/Control/number1").disabled = false
	get_node("ColorRect/Control/number2").disabled = false
	get_node("ColorRect/Control/number3").disabled = false
	get_node("ColorRect/Control/number4").disabled = false
	get_node("Label").visible = false
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList").clear()
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList2").clear()
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList3").clear()
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList4").clear()
	n1=0
	n2=0
	n3=0
	n4=0
	attempts=0
	get_node("ColorRect/Control/number1").text=str(n1)
	get_node("ColorRect/Control/number2").text=str(n2)
	get_node("ColorRect/Control/number3").text=str(n3)
	get_node("ColorRect/Control/number4").text=str(n4)
	number = rand_range(10000, 99999)
	number = int(round(number))
	digit1=(number%10000)/1000
	digit2=(number%1000)/100
	digit3=(number%100)/10
	digit4=number%10
	
	temp1="test"
	temp2="test"
	temp3="test"
	temp4="test"
	
	print (digit1)
	print (digit2)
	print (digit3)
	print (digit4)
	
	pass # Replace with function body.


func _on_number1_button_up():
	if n1==9:
		n1=0
	else:
		n1+=1
	get_node("ColorRect/Control/number1").text=str(n1)
	pass # Replace with function body.


func _on_number2_button_up():
	if n2==9:
		n2=0
	else:
		n2+=1
	get_node("ColorRect/Control/number2").text=str(n2)
	pass # Replace with function body.


func _on_number3_button_up():
	if n3==9:
		n3=0
	else:
		n3+=1
	get_node("ColorRect/Control/number3").text=str(n3)
	pass # Replace with function body.


func _on_number4_button_up():
	if n4==9:
		n4=0
	else:
		n4+=1
	
	get_node("ColorRect/Control/number4").text=str(n4)
	pass # Replace with function body.





func _on_check_button_up():
	
	temp1="test"
	temp2="test"
	temp3="test"
	temp4="test"
	
	if n1==digit1:
		temp1="green"
	if n2==digit2:
		temp2="green"
	if n3==digit3:
		temp3="green"
	if n4==digit4:
		temp4="green"
	
	if temp1!="green":
		if temp2!="green"&&n2==digit1:
			temp2="yellow"
		if temp3!="green"&&n3==digit1:
			temp3="yellow"
		if temp4!="green"&&n4==digit1:
			temp4="yellow"
			
	if temp2!="green":
		if temp1!="green"&&n1==digit2:
			temp1="yellow"
		if temp3!="green"&&n3==digit2:
			temp3="yellow"
		if temp4!="green"&&n4==digit2:
			temp4="yellow"
			
	if temp3!="green":
		if temp2!="green"&&n2==digit3:
			temp2="yellow"
		if temp1!="green"&&n1==digit3:
			temp1="yellow"
		if temp4!="green"&&n4==digit3:
			temp4="yellow"
			
	if temp4!="green":
		if temp2!="green"&&n2==digit4:
			temp2="yellow"
		if temp3!="green"&&n3==digit4:
			temp3="yellow"
		if temp1!="green"&&n1==digit4:
			temp1="yellow"
			
	if temp1!="green"&&temp1!="yellow":
		temp1=="red"
			
	if temp2!="green"&&temp2!="yellow":
		temp2=="red"
			
	if temp3!="green"&&temp3!="yellow":
		temp3=="red"
			
	if temp4!="green"&&temp4!="yellow":
		temp4=="red"
		
	
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList").add_item(str(n1))
	if temp1=="red":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList").set_item_custom_bg_color(attempts, Color(255,0,0,50))
	elif temp1=="green":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList").set_item_custom_bg_color(attempts, Color(0,100,0,50))
	elif temp1=="yellow":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList").set_item_custom_bg_color(attempts, Color(137,138,0,50))
		
	
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList2").add_item(str(n2))
	if temp2=="red":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList2").set_item_custom_bg_color(attempts, Color(255,0,0,50))
	elif temp2=="green":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList2").set_item_custom_bg_color(attempts, Color(0,100,0,50))
	elif temp2=="yellow":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList2").set_item_custom_bg_color(attempts, Color(137,138,0,50))
	
	
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList3").add_item(str(n3))
	if temp3=="red":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList3").set_item_custom_bg_color(attempts, Color(255,0,0,50))
	elif temp3=="green":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList3").set_item_custom_bg_color(attempts, Color(0,100,0,50))
	elif temp3=="yellow":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList3").set_item_custom_bg_color(attempts, Color(137,138,0,50))
		
	
	get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList4").add_item(str(n4))
	if temp4=="red":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList4").set_item_custom_bg_color(attempts, Color(255,0,0,50))
	elif temp4=="green":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList4").set_item_custom_bg_color(attempts, Color(0,0.7,0,0.5))
	elif temp4=="yellow":
		get_node("ColorRect/Control2/ScrollContainer/HBoxContainer/ItemList4").set_item_custom_bg_color(attempts, Color(137,138,0,0))
	attempts+=1
	
	if temp1=="green"&&temp2=="green"&&temp3=="green"&&temp4=="green":
		you_win()
	#get_node("ColorRect/Control2/HBoxContainer2/RichTextLabel").add_text(str(n1)+" "+str(n2)+" "+str(n3)+" "+str(n4)+" ")
	
	#var a = Label.new()
	#get_node("ColorRect/Control2/HBoxContainer/VBoxContainer").add_child(color, true)
	
	pass # Replace with function body.
	
func you_win():
	get_node("ColorRect/Control/check").disabled = true
	get_node("ColorRect/Control/number1").disabled = true
	get_node("ColorRect/Control/number2").disabled = true
	get_node("ColorRect/Control/number3").disabled = true
	get_node("ColorRect/Control/number4").disabled = true
	get_node("Label").visible = true
	
	print ("You win!")
	pass
	
