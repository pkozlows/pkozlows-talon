mode: all
-
^taki (mode | mote | moat)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
^come (mode | mote | moat)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")

^make sea (mode | mote | moat)$:
    mode.disable("sleep")
    mode.enable("dictation")
    mode.enable("command")