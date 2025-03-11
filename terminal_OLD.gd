extends TextEdit
#var caret_column = 0
#var caret_row = 0

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
			await get_tree().create_timer(0.1).timeout
		set_text(get_text()+"\n")
		get_parent().get_node("LineEdit").editable = true
#		caret_column = 0
#		caret_row+=1

# print text instantly
func inst_print_text(text):
	match text:
		"clear":
			clear()
		_:
			if len(text)==4:
				var int1 = text[0]
				var int2 = text[1]
				var int3 = text[2]
				var int4 = text[3]
				var result = get_parent().check_password(int1,int2,int3,int4)
				match result[0]:
					"red":
						pass
					"yellow":
						pass
					"green":
						pass
					_:
						pass
					
				
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
