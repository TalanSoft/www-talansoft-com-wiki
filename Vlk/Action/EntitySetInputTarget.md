# EntitySetInputTarget

Enables input\_target on the target entity. Once an entity has its
input\_target flag set it will receive input from the all the
"non-pointing" devices such as the keyboard or game controllers.

Use [Action/EntityUnsetInputTarget](./Action/EntityUnsetInputTarget) to
clear the flag.

Note that when you drop an event such as
[Event/Keyboard](./Event/Keyboard) on an entity its input\_target flag is
automatically set.
