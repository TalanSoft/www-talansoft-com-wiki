# EntityDragToCursor

**EntityDragToCursor** is used to make an entity follow the primary
cursor during the time that the action is played. The primary cursor's
position is the mouse position or the first finger's position on a touch
screen.

-   **use\_offset** : If checked the target entity will follow the
    cursor with an offset (cursor - entity). The offset is the distance
    between the cursor and the entity when the action starts. When
    unchecked the center of the entity follows the cursor's position.

NOTE: Behaves like [InputDrag](./Action/InputDrag) excepted that it always
follow the primary cursor.
