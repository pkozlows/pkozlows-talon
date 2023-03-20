tag: user.snippets
-
snippet {user.snippets}: user.snippet_insert(user.snippets)
snippet hunt <user.text>: user.snippet_search(user.text)
snippet hunt: user.snippet_search("")
snippet create: user.snippet_create()
snippet show: user.snippet_toggle()
