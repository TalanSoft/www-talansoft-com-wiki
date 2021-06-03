# EntitySetTimer

**EntitySetTimer** sets a timer that will expire after a specified
number of seconds. Once the timer expire it triggers the
[Timer](Event/Timer) event on the target entity.

Short timers are better handled by just putting your actions "later" on
the timeline, however this timer is usefull for very long delays. For
example a good usage of the timer would be to make a game expire after a
couple of minutes either to make a timed game sequence or for a time
limited demo.

-   **timer\_id** : The Timer ID that the [Timer](Event/Timer) event
    will receive. It must be the same id as in the [Timer](Event/Timer)
    event for the event to be triggered. This **should be a number**.
-   **timer\_seconds** : The number of seconds for the timer to expire.
    A negative value disables the timer.
