find it: edit.find()

next one: edit.find_next()

go word last: edit.word_left()

go word next: edit.word_right()

go last: edit.left()

go next: edit.right()

go fly: edit.up()

go rain: edit.down()

go line start: edit.line_start()

go line end: edit.line_end()

go way last:
    edit.line_start()
    edit.line_start()

go way next: edit.line_end()

go way rain: edit.file_end()

go way fly: edit.file_start()

go bottom: edit.file_end()

go top: edit.file_start()

go page rain: edit.page_down()

go page fly: edit.page_up()

# selecting
select line: edit.select_line()

select all: edit.select_all()

select last: edit.extend_left()

select next: edit.extend_right()

select fly: edit.extend_line_up()

select rain: edit.extend_line_down()

select word: edit.select_word()

select word last: edit.extend_word_left()

select word next: edit.extend_word_right()

select way last: edit.extend_line_start()

select way next: edit.extend_line_end()

select way fly: edit.extend_file_start()

select way rain: edit.extend_file_end()

# editing
indent [more]: edit.indent_more()

(indent less | out dent): edit.indent_less()

# deleting
clear line: edit.delete_line()

clear last: key(backspace)

clear next: key(delete)

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

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
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

copy word last: user.copy_word_left()

copy word next: user.copy_word_right()

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

cut word last: user.cut_word_left()

cut word next: user.cut_word_right()

cut line: user.cut_line()

(pace | paste) all:
    edit.select_all()
    edit.paste()

# duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()
