user.draft_editor_running: True
not tag: user.draft_editor_app_focused
-

rack edit this: user.draft_editor_open()

rack edit all:
    edit.select_all()
    user.draft_editor_open()

rack edit line:
    edit.select_line()
    user.draft_editor_open()

rack edit top:
    edit.extend_file_start()
    user.draft_editor_open()

rack edit bottom:
    edit.extend_file_end()
    user.draft_editor_open()

rack edit submit:
    user.draft_editor_paste_last()
