# InputRayCast

Perform a raycast at the position specified by its parent event. A
raycast will pick entity and trigger its
[EnterRayHit](./Event/EnterRayHit) and [LeaveRayHit](./Event/LeaveRayHit)
events accordingly.

This action should usually be placed in an input Event suchs as
[FingerDown](./Event/FingerDown) or [FingerMove](./Event/FingerMove). The
action doesn't do anything if its not in an event that has at least a 2D
coordinate in its parameter A.

A simple way to think about this action is that in a
[FingerDown](./Event/FingerDown) event it'll trigger the
[EnterRayHit](./Event/EnterRayHit) event on the entity that is below the
finger or mouse cursor.

-   **on\_update**: Whether the raycast is done every time the action is
    updated. If unchecked the raycast is done only when the action
    starts.
-   **ray\_class**: The collision/physics class to use for the raycast.
-   **max\_distance**: Is how far from the camera the ray will reach do
    the picking, entities that are further away than the
    **max\_distance** will never be picked by the raycast.
