# RayCast

The RayCast action does a raycast from the start to the end entity.

* `ray_class`: That's the class used to do the ray cast, which can be used by Enter/LeaveRayHit to filter which ray cast we're interested in.
* `ray_start_entity`: The entity the ray start's from. If empty we'll use the action's parent entity as the source.
* `ray_end_entity`: Is the target where the ray ends. If empty we'll use the action's parent entity's forward direction and max_distance to define the target. The forward direction is the Z-axis (blue arrow in the transform gizmo in local space)
* `max_distance`: When using the start entity's direction this is the maximum distance from the starting position of the ray.
