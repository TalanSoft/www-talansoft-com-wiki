# AnimRotateAngle

Rotates the entity of the specified angle around the specified axis. The
rotation speed if derived from the action's time block divided by the
rotation angle.

This action is usually used with *FinishAnim* to make precise and
reversible rotations for which it is crucial that the second actions
cancels the effect of the first one.

-   **Axis** : The axis around which the entity rotates.
-   **FinishAnim** : If checked the entity's rotation is snapped into
    the destination orientation once the action ends.
-   **Angle** : The angular amount the object is going to be rotated.
