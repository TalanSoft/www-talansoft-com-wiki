# InputFwd

Moves the specified entity forward in function of the specified movement
input and **speed** property.

This action should usually be placed in an input Event suchs as
[Keyboard](Event/Keyboard) or [GameCtrlStick](Event/GameCtrlStick). If
the action is not in an input event it'll assume an input of "1", that
is it'll directly apply the specified speed every time the action is
updated.

Forward means along its local Z axis (the blue axis with the gizmo in
local mode).

-   **speed**: The movement speed, in units/seconds.

<!-- -->

-   **accelerate**: This flag is meaningful only with a
    [CollideCharacter](Entity/CollideCharacter) entity. It specifies
    that the movement should be created indirectly by accelerating the
    object instead of instantly adding to its velocity. Note that the
    this is the behavior you'll want for "indirectly" controlled
    objects, such as boats and cars. For a regular avatar which should
    be directly controled by the user this should usually be left off.
