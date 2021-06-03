# Layer

A layer is used to setup an isolated island in your scene.

It can be used to setup different rendering pipelines, independant
collision islands, use several different cameras in the same scene, ...

Frequently you'll have at least two layers in a Level, one **Default**
Layer which contains your main scene data and a **UI** Layer with its
own camera for all the user interface buttons, indicators, ...

## Flags

-   *None*:
-   *CollideScene*:
-   *PainterDrawSet*: This flag allows Valkyrie Engine to know which
    layer should be displayed first depending on its position in the
    scene's hierarchy.
-   *DontPaintRenderTargets*:
-   *Vizcell*:
-   *Camera*: This flag specifies that the layer contains its own
    camera. Otherwise the camera of the parent layer will be used.
-   *ViewportStretch*: This flag enables the aspect ratio of the
    Viewport to be changed without affecting the position of the UI
    elements.
-   *ViewportCenterH*: Center the viewport horizontally on the screen.
-   *ViewportCenterV*: Center the viewport vertically on the screen.
-   *ViewportRight*:
-   *ViewportBottom*:
-   *DynamicsScene*:
-   *RenderTarget*:
