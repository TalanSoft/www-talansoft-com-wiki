# InputPitch

Rotates the specified entity around its pitch axis in function of the
specified movement input and **speed** property.

This action should usually be placed in an input Event suchs as
[FingerRelativeMove](./Event/FingerRelativeMove) or
[GameCtrlStick](./Event/GameCtrlStick). If the action is not in an input
event it'll assume an input of "1", that is it'll directly apply the
specified speed every time the action is updated.

Pitch axis means around its local X axis (the red axis with the gizmo in
local mode). That is usually what you'd consider "looking up/down".

-   **speed**: The movement speed, in units/seconds.

<!-- -->

-   **view\_range**: Specifies the minimum and maximum view angle that
    can be reached. Disabled when set to zero.
