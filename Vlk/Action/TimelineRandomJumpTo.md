# TimelineRandomJumpTo

Move the current time of the targeted timeline to a randomly picked
timed in the \[min\_time,max\_time\] range.

-   **min\_time** : The minimum time to jump to.

<!-- -->

-   **max\_time** : The maximum time to jump to.

<!-- -->

-   **timeline** : The targeted timeline. If empty targets the targeted
    entity's *Default* timeline, else targets the timeline with the
    specified name ; there is a *Default* timeline with each entity and
    one for each event under the targeted entity.

<!-- -->

-   **timeline\_play** : If checked (the default) the targeted timeline
    is played after the time jump. This is equivalent to adding an
    [Action/TimelinePlay](Action/TimelinePlay) beside the action.
