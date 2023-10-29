#defines the commands that (sleep | seep)/wake Talon
mode: all
-
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
^(sleep | seep) all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_(sleep | seep)()
    speech.disable()
    user.engine_(sleep | seep)()
^go to sleep [<phrase>]$: speech.disable()
^wake up from sleep$: speech.enable()
