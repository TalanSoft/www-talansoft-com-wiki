# EntityCopyTransform

Copy the positional states of the source to the target entity.

-   **target**: The entity that the transform is copied to.
-   **source**: The entity to copy.
-   **source\_node**: The *Character* node to copy. Note that this is
    usefull only when the source is a *Character* entity. It doesn't
    have any effect for other type of entities.

<!-- -->

-   **on\_update**: Whether to do the copy every time the action is
    updated, if this flag is not set the copy occurs only once when the
    action starts.
-   **local**: Whether to copy the local or the absolute/world transform
    of the source. This is meaningful only for Relative entities since
    otherwise the local and world transforms are the same. The local
    transform the is delta between the entity and its parent.
-   **position**: Whether to copy the position (translation).
-   **rotation**: Whether to copy the rotation.
-   **scale**: Whether to copy the scaling factor.
-   **reset\_physics** : Whether the physics of the target entity should
    be reset after the copy.
