# AnimPath

Move the target entity along the specified path and/or look at the
specified path. The path entity needs to implement the iNUSpline
interface. This is the case of the standard path entity. If not the
world position of the targeted entity is used as target position.

## Properties :

-   **path\_position** : Path entity to move the target’s position
    along.
-   **path\_position\_time\_offset** : Time offset, in seconds, to
    sample the current time on the position path. This applies only if
    the position path implements the spline interface.
-   **path\_position\_mask** : 3D vector that will be multiplied with
    the sample path position, this permit to cancel one of the axis
    components, for example to restrict the path movement on the x/z
    axis (and remove y axis – height movements).
-   **path\_lookat** : Path entity to move the target’s look at along.
-   **path\_lookat\_time\_offset** : Time offset, in seconds, to sample
    the current time on the look at path. This applies only if the look
    at path implements the spline interface.
-   **path\_lookat\_mask** : 3D vector that will be multiplied with the
    sample path look at, this permit to cancel one of the axis
    components, for example to restrict the path movement on the x/z
    axis (and remove y axis – height movements).
-   **speed**: The number of units the entity should move per seconds
    along the path.
