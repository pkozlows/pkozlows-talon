not mode: sleep
-
^talk mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^come mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
