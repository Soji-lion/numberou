extends RichTextLabel
#var caret_column = 0
#var caret_row = 0

#check if string only contains numbers
func digits_only(text):
	var regex = RegEx.new()
	regex.compile("^[0-9]+$")
	if regex.search(str(text)):
		return true
	else:
		return false


# Print text slowly
func print_text(text, delay):
	if text=="clear":
		clear()
	else:
		get_parent().get_node("LineEdit").editable = false
		var terminal_text = text
		while terminal_text:
		
			var next_char = terminal_text[0]
			terminal_text = terminal_text.substr(1)
			set_text(get_text()+next_char)
#			caret_column+=1
			await get_tree().create_timer(delay).timeout
		set_text(get_text()+"\n")
		get_parent().get_node("LineEdit").editable = true
		get_parent().get_node("LineEdit").grab_focus()
#		caret_column = 0
#		caret_row+=1

# print text instantly
func inst_print_text(text):
	match text:
		"clear":
			clear()
			set_text("[color=green]")
		"reset":
			set_text("")
			clear()
			get_parent().new_game()
		_:
			set_text(get_text()+"\n")
			if len(text)==4 && digits_only(text):
				
				var int1 = text[0]
				var int2 = text[1]
				var int3 = text[2]
				var int4 = text[3]
				var result = get_parent().check_password(int1,int2,int3,int4)
				match result[0]:
					"red":
						set_text(get_text()+"[color=red]"+str(int1)+"[/color]")
					"yellow":
						set_text(get_text()+"[color=yellow]"+str(int1)+"[/color]")
					"green":
						set_text(get_text()+"[color=green]"+str(int1)+"[/color]")
					"greenyellow":
						set_text(get_text()+"[color=purple]"+str(int1)+"[/color]")
					"blue":
						set_text(get_text()+"[color=blue]"+str(int1)+str(int2)+
						str(int3)+str(int4)+"[/color]\n")
						print_text("Congratulations! You successfully hacked the password.
Type \"reset\" to play again!",0.05)
						return
					_:
						set_text(get_text()+str(int1))
				match result[1]:
					"red":
						set_text(get_text()+"[color=red]"+str(int2)+"[/color]")
					"yellow":
						set_text(get_text()+"[color=yellow]"+str(int2)+"[/color]")
					"green":
						set_text(get_text()+"[color=green]"+str(int2)+"[/color]")
					"greenyellow":
						set_text(get_text()+"[color=purple]"+str(int2)+"[/color]")
					_:
						set_text(get_text()+str(int2))
				match result[2]:
					"red":
						set_text(get_text()+"[color=red]"+str(int3)+"[/color]")
					"yellow":
						set_text(get_text()+"[color=yellow]"+str(int3)+"[/color]")
					"green":
						set_text(get_text()+"[color=green]"+str(int3)+"[/color]")
					"greenyellow":
						set_text(get_text()+"[color=purple]"+str(int3)+"[/color]")
					_:
						set_text(get_text()+str(int1))
				match result[3]:
					"red":
						set_text(get_text()+"[color=red]"+str(int4)+"[/color]")
					"yellow":
						set_text(get_text()+"[color=yellow]"+str(int4)+"[/color]")
					"green":
						set_text(get_text()+"[color=green]"+str(int4)+"[/color]")
					"greenyellow":
						set_text(get_text()+"[color=purple]"+str(int4)+"[/color]")
					_:
						set_text(get_text()+str(int4))
			else:
				set_text(get_text()+text)

func _ready() -> void:
	pass

func _on_line_edit_text_submitted(new_text: String) -> void:
	inst_print_text(new_text)
	get_parent().get_node("LineEdit").text = ""
	pass # Replace with function body.


#func _on_caret_changed() -> void:
#	set_caret_column(caret_column, false)
#	set_caret_line(caret_row,false)
#	pass # Replace with function body.
