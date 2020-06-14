#  Running talon script functionality
```
from talon import actions, Context
ctx = Context()
@ctx.action_class('core')
class Actions:
    def run_talon_script(ctx, script, m):
        print(script, m)
        actions.next(ctx, script, m)
```
#  memory debugging
 `~/.talon/bin/pip install objgraph`
 then
` ~/.talon/bin/repl`
 then
` import objgraph; objgraph.show_most_common_types(limit=50)`

