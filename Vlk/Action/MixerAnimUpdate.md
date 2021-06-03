# MixerAnimUpdate

Updates the specified animation.

*By default this action alone is enough to do a simple animation
playback, it plays the default animation at its default playback speed.*

This action applies to all entities which expose the iAnimationMixer
interface. This is notably the case of the [Character](./Entity/Character)
entity.

-   **AnimName**: Name of the animation targeted.
-   **AnimBlendTime**: If non-zero indicates the time it will take for
    the animation to fade in and the previous animation played on the
    channel to fade out.
-   **AnimBlendChannel**: The name of the animation channel. Each
    animation channel is always playing a single animation. When
    starting an animation and another is already playing on the channel
    the old animation is faded out and the new animation faded in during
    *AnimBlendTime* seconds.
-   **AnimSpeed**: If non-zero will set the speed of the targeted
    animation when the action starts.

<!-- -->

-   **AnimLoop**: If checked the animation loops once its played to its
    end time.
-   **AnimSetTime**: If checked the animation's current time follows
    precisely the action's time block current time. This is usefull to
    precisely synchronize an animation with an event occurring in a
    particular scene.
-   **AnimResetTimeOnStart**: If checked the animation's current time is
    reset to its start time when the action starts ; else the update can
    be considered "incremental".

<!-- -->

-   **AnimStartTime**: The starting time of the animation, if not set
    the animation's default start time is used.
-   **AnimEndTime**: The end time of the animation, if not set the
    animation's default end time is used.

***AnimStartTime** and **AnimEndTime** are usefull to crop animation
sequences out of big animations. This happens for example if you have
exported your walk and run animations in a single animation file ; you
can set the start/end time to frame the walk or run portion of your
animation.*
