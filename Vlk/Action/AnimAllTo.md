# AnimAllTo

Use **AnimAllTo** to interpolate over time all positional states of an
entity to match those of a destination entity.

-   **Position**: Whether to interpolate the position (translation).
-   **Rotation**: Whether to interpolate the rotation.
-   **RotationShortest**: If checked the rotation will always try to
    take the shortest "rotation path".
-   **RotationOpposite**: The rotation will always go in the "other"
    direction, aka if the rotation is set to take the shortest arc it'll
    take the longest arc when **RotationOpposite** is set.
-   **Scale**: Whether to interpolation the scaling factor.
-   **FinishAnim** : If checked the entity is snapped into the
    destination target once the action ends.

<!-- -->

-   **target**: The entity to modify.
-   **dest**: The entity to move to.
