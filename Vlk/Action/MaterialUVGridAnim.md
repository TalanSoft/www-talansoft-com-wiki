# MaterialUVGridAnim

Sets a UV transform on the specified material of the target entity.

The UV transform is set such that it'll pick a single square in a
texture. Basically it'll pick a single sprite on a sprite sheet layed
out on a uniform grid.

-   **material**: Name of the material to target in the targeted entity.
-   **tex\_grid**: The number of rows and columns in the grid on the
    texture.
-   **frame\_time**: The time a single is displayed before going to the
    next.
-   **frame\_range**: The first and last frame to display.
-   **loop**: Whether the animation should loop.
-   **random**: Whether the next frame should be picked at random
    instead of using the next frame in the sequence.
