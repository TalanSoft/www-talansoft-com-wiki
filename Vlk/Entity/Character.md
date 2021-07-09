# Character

-   **occluder**: Whether the character will be an occluder when
    occlusion culling is enabled.
-   **drawop\_culling**: Whether to do visibility culling per draw
    operation in the character, instead of using only the character's
    bounding volume. A draw operation is one part of the character. This
    is useful for when a character is a huge scene, which is common for
    environments. As an example, if the Character is a city with this
    flag on each building is culled individually. Without it everything
    would be drawn every frame as long as any part of the city is
    visible.

<!-- -->

-   **create\_flags**:
    -   *Animated*: Whether the character will be used with extra
        animations. Without this flag all the individual parts of the
        character are collapsed and optimized to speed up rendering.
        With the flag on, the original structure of the character is
        preserved so that animations can be applied to the character's
        bones or nodes.
    -   *AnimatedCollapseNodes*: Collapse nodes which are not touched by
        any animation in the base character when loading an animated
        character.
    -   *StaticIfNoAnim*: Import as static (aka without the *Animated*
        flag) if there isn't any animation in the base character.
    -   *SharedAnimations*: Animations are shared between all the
        Characters using the same base character file.
    -   *SharedMaterials*: Materials are shared between all the
        Characters using the same base character file.
    -   *ComputeNormals*: Whether to compute the character's normals
        when it is loaded. This can be used to fix normals if the
        characters are not correctly setup, and you don't have access to
        the source or don't want to modify it.
    -   *ComputeTangentFrame*: Whether to compute the character's
        tangent frames when it is loaded. This is used for normal
        mapping. If not set, the tangent frames are computed within the
        pixel shader which is usually slower than precomputing it at load time.
    -   *NoPhysics*: Never load any physics data for the character.
    -   *PhysicsOnly*: Only load the physics data of the character, the
        character is never drawn on screen.
    -   *PhysicsDynamicScaling*: Notify that the character is going to be
        scaled dynamically while the level is running, and that its mesh
        will be used as collision shape. This is notably slower (20-30%
        slower) on mobile devices and thus is not the default.
    -   *PhysicsHull*: The physics data is a convex hull of the
        character.

<!-- -->

-   **fading**: If not -1/-1, specifies the start and end distance at
    which the character is faded out of the view. In the transition zone
    (between start and end) a shader is applied to fade out the
    character smoothly. The particular fading effect depends of the
    rendering pipeline in use.

## LODs

The LODs are a list of distance and character file path. The LOD0 (or
base character file) is always present and cannot be removed. Use the
\[+\] button at the bottom to add a new LOD. If not -1, the distance
specifies the distance from the camera when the LOD should start to be
used.

    [ LOD0 Distance ][ LOD0 / Base Character Path ]
    [ LOD1 Distance ][ LOD1 Path ]
    ...
    [ LODN Distance ][ LODN Path ]
                               [+] // Add a new LOD

## Physics

-   **shape\_type**: The type of shape that will represent the Character
    physically. The *Mesh* shape type will use what is specified by the
    physics flags in **create\_flags**. The other shape types will use
    the character's bounding volume as basis to compute a reasonable
    approximation of the character's shape. Note that *Minkowski*,
    *Compound* and *Heightfield* can't be used effectively with a
    Character entity.
-   **size**: If not zero specifies the reference size to use for the
    bounding volume physics shapes, such as *Box*, *Sphere* or
    *Cylinder*.

Note that you can press *F4* in the editor to toggle on/off the
collision box debug view.

To add rigid body physics to a Character use a parent
[Entity/Primitive](./Entity/Primitive).
