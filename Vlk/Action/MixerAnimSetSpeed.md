# MixerAnimSetSpeed

Sets the playback speed factor of the specified animation.

This action applies to all entities which expose the iAnimationMixer
interface. This is notably the case of the [Character](./Entity/Character)
entity.

-   **AnimName**: Name of the animation targeted.
-   **AnimStartSpeed**: The speed set when the action starts.
-   **AnimEndSpeed**: The speed set when the action ends.

When AnimStartSpeed and AnimEndSpeed are different values the speed
value at a given time is the interpolation of the two values relative to
the current time at which the action is currently set. So if the
action's time scrubber is in the middle of its time block the speed
value will be right in the middle between AnimStartSpeed and
AnimEndSpeed.
