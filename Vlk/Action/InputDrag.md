# InputDrag

**InputDrag** is used to make an entity follow the position specified by
its parent event.

This action should usually be placed in an input Event suchs as
[FingerDown](./Event/FingerDown) or [FingerMove](./Event/FingerMove). The
action doesn't do anything if its not in an event that has at least a 2D
coordinate in its parameter A.

-   **use\_offset** : If checked the target entity will follow the
    position with an offset (position - entity). The offset is the
    distance between the position and the entity when the action starts.
    When unchecked the center of the entity will follow the position.

NOTE: Its a more flexible version of
[EntityDragToCursor](./Action/EntityDragToCursor).
