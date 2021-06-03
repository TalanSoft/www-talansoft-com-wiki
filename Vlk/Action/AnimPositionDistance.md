# AnimPositionDistance

Translate the entity of the specified number of units along the
specified axis. The speed of the movement is the length of the Action's
time block divided by the Distance specified.

AnimPositionDistance is usually used with *FinishAnim* checked so as to
guarantee a that a certain distance has been traveled once the action
finished playing. This enables the addition of another
AnimationPositionDistance with the inverse distance to *perfectly*
reverse the effect of the first one. Useful to build precise UI cursors
and fixed grid movements in general.

-   **Axis** : The axis which specify the direction to move along.
-   **FinishAnim** : If checked the entity is snapped into the
    destination position once the action ends.
-   **Distance** : The distance to be moved.
