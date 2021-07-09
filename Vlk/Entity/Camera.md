# Camera

A camera entity sets what the user will see from a certain point of
view. It behaves much like a real camera or the eyes of a person.

-   **fov** *(bound)*: Set the camera's vertical field of view in
    degrees. This is used with perspective projection only (the default
    if orthogonal isn't checked).
-   **near\_clip\_plane**: The minimum distance for an object to be
    visible. Polygons closer than that distance are clipped (cut) to
    that boundary.
-   **far\_clip\_plane**: The maximum distance for an object to be
    visible. Polygons further than that distance are clipped (cut) to
    that boundary.
-   **frustum\_culling**: Whether frustum culling is enabled.
-   **occlusion\_culling**: Whether occlusion culling is enabled. Note
    that occlusion culling doesn't work on every platform.

<!-- -->

-   **orthogonal**: Whether the camera projection should be orthogonal
    instead of the default perspective projection.
-   **ortho\_size**: The height of the othogonal projection. The height
    defines the number of units that the orthogonal projection will
    "see". So if you have a height of 100 you'll see 100 units of the
    world around the camera. The displayed width is otho\_size \* aspect
    ratio.
