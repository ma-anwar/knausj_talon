app: Mate-terminal
mode:user.commandline
-
version import: "svn import "
version update: 'svn update '
version checkout: 'svn checkout '
version add: 'svn add '
version delete: 'svn delete '
version copy: 'svn copy '
version move: 'svn move '
version mkdir: 'svn mkdir  '
version diff: 'svn diff '
version status: 'svn status '
version revert:'svn revert '
version patch: 'svn diff > '
version commit: 'svn commit '
version log: 'svn log '
version cat: 'svn cat '
version annotate: 'svn annotate '
version list: 'svn list '
version ignore:
    insert("svn propset svn:ignore  .")
    edit.left()
    edit.left()
