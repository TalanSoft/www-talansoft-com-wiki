# AnimMoveTo

Use **AnimMoveTo** to smoothly move an entity to a target position. A
spring is used guaranteeing a smooth and natural looking movement.

-   **spring\_s**: The general speed of the spring.
-   **spring\_e**: Defines the "equilibrum" of the spring. A value &lt;
    1 will create a spring which "overshoots" its target and then get
    back to it ; 1 defines a spring that will reach its target
    "directly" ; a value &gt; 1 will set a spring which "slows down"
    before reaching its target.
-   **snap\_radius**: The threshold distance between the entity and its
    target position below which the entity is considered to have reached
    the destination and is thus snapped to the destination position.

<!-- -->

-   **target**: The entity to modify.
-   **dest**: The entity marking the destination position to move to.
