# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# Searching
find it: edit.find()
next one: edit.find_next()

# Navigation

# The reason for these spoken forms is that "page up" and "page down" are globally defined as keys.
scroll up: edit.page_up()
scroll down: edit.page_down()

go word last: edit.word_left()

go word next: edit.word_right()

go last: edit.left()

go next: edit.right()

go fly: edit.up()

go rain: edit.down()

go line start | head: edit.line_start()
go line end | tail: edit.line_end()

go way last:
    edit.line_start()
    edit.line_start()

go way right: edit.line_end()

go way down: edit.file_end()

go way up: edit.file_start()

go bottom: edit.file_end()

go top: edit.file_start()

go page down: edit.page_down()

go page up: edit.page_up()

# selecting
select line: edit.select_line()
select line start: user.select_line_start()
select line end: user.select_line_end()

select left: edit.extend_left()

select right: edit.extend_right()

select up: edit.extend_line_up()

select down: edit.extend_line_down()

select word: edit.select_word()

select word left: edit.extend_word_left()

select word right: edit.extend_word_right()

select way left: edit.extend_line_start()

select way right: edit.extend_line_end()

select way up: edit.extend_file_start()

select way down: edit.extend_file_end()

# Indentation
indent [more]: edit.indent_more()
(indent less | out dent): edit.indent_less()

# Delete
clear all: user.delete_all()
clear line: edit.delete_line()

clear left: key(backspace)

clear right: key(delete)

clear fly:
    edit.extend_line_up()
    edit.delete()

clear rain:
    edit.extend_line_down()
    edit.delete()

clear word: edit.delete_word()

clear word last:
    edit.extend_word_left()
    edit.delete()

clear word next:
    edit.extend_word_right()
    edit.delete()

clear way last:
    edit.extend_line_start()
    edit.delete()

clear way next:
    edit.extend_line_end()
    edit.delete()

clear way fly:
    edit.extend_file_start()
    edit.delete()

clear way rain:
    edit.extend_file_end()
    edit.delete()

# Copy
copy that: edit.copy()
copy all: user.copy_all()
copy line: user.copy_line()
copy line start: user.copy_line_start()
copy line end: user.copy_line_end()
copy word: user.copy_word()
copy word left: user.copy_word_left()
copy word right: user.copy_word_right()

#to do: do we want these variants, seem to conflict
# copy last:
#      edit.extend_left()
#      edit.copy()
# copy next:
#     edit.extend_right()
#     edit.copy()
# copy fly:
#     edit.extend_up()
#     edit.copy()
# copy rain:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left: user.copy_word_left()

copy word right: user.copy_word_right()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut last:
#      edit.select_all()
#      edit.cut()
# cut next:
#      edit.select_all()
#      edit.cut()
# cut fly:
#      edit.select_all()
#     edit.cut()
# cut rain:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left: user.cut_word_left()

cut word right: user.cut_word_right()

# cut line: user.cut_line()

pace all:
    edit.select_all()
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()
pace all: user.paste_all()
pace line: user.paste_line()
pace line start: user.paste_line_start()
pace line end: user.paste_line_end()
pace word: user.paste_word()

# Duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()

# Insert new line
new line above: edit.line_insert_up()
new line below: edit.line_insert_down()

# Insert padding with optional symbols
padding: user.insert_between(" ", " ")
padding <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# Undo/redo
undo that: edit.undo()
redo that: edit.redo()

# Save
file save: edit.save()
file save all: edit.save_all()
