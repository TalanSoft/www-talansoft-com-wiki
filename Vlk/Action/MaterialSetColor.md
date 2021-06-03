# MaterialSetColor

Sets the color of a channel of the specified Material in the target
entity.

-   **start\_color\_on\_start**: If checked, when the action starts,
    **start\_color** is replaced by the current color of the targeted
    material channel.
-   **finish\_anim**: Whether to set the end color exactly when the
    action is stopped, even if it stopped in the middle of the action's
    time block.
-   **material**: Name of the material to target in the targeted entity.
-   **channel**: Channel to target in the targeted material.
-   **color\_mask**: Specifies which color channels should be modified
    by the action.
-   **start\_color**: The color set when the action starts. If
    **start\_color\_on\_start** is *on* this property is ignored.
-   **end\_color**: The color set when the action ends.
