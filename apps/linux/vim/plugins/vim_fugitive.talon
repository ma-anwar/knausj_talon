tag: user.vim_fugitive
and not tag: user.vim_terminal
-

(fugitive|git) add (current|this) file: user.vim_command_mode(":G add %\n")
(fugitive|git) add everything: user.vim_command_mode(":G add -u\n")
(fugitive|git) blame: user.vim_command_mode(":G blame\n")
(fugitive|git) browse: user.vim_command_mode(":GBrowse\n")
(fugitive|git) commit: user.vim_command_mode(":G commit\n")
(fugitive|git) (delete|remove): user.vim_command_mode(":GDelete")
(fugitive|git) diff staged: user.vim_command_mode(":G! diff --staged\n")
(fugitive|git) diff: user.vim_command_mode(":Gdiffsplit\n")
(fugitive|git) vertical diff: user.vim_command_mode(":Gvdiffsplit!\n")
(fugitive|git) fetch: user.vim_command_mode(":G fetch ")
(fugitive|git) force write: user.vim_command_mode(":Gwrite!")
(fugitive|git) grep: user.vim_command_mode(":G grep ")
(fugitive|git) log: user.vim_command_mode(":GLog")
(fugitive|git) merge: user.vim_command_mode(":G fallmerge")
(fugitive|git) merge tool: user.vim_command_mode(":G mergetool")
(fugitive|git) move: user.vim_command_mode(":GMove ")
(fugitive|git) pull: user.vim_command_mode(":G pull ")
(fugitive|git) push: user.vim_command_mode(":G push ")
(fugitive|git) remove: user.vim_command_mode(":GRemove ")
(fugitive|git) rename: user.vim_command_mode(":GRename ")
(fugitive|git) reset (current|reset) file: user.vim_command_mode(":G reset HEAD %\n")
(fugitive|git) split diff: user.vim_command_mode(":Gdiffsplit!")
(fugitive|git) status: user.vim_command_mode(":G\n")
(fugitive|git) write: user.vim_command_mode(":G write")

# merge conflict resolution
keep (target|left): user.vim_command_mode(":diffget //2\n")
keep (merge|right): user.vim_command_mode(":diffget //3\n")
next hunk: user.vim_normal_mode_keys("] c")
last hunk: user.vim_normal_mode_keys("[ c")
