mode: all
-
^taki (mode | mote | moat)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^come (mode | mote | moat)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")

^make sea (mode | mote | moat)$:
    mode.disable("sleep")
    mode.enable("dictation")
    mode.enable("command")