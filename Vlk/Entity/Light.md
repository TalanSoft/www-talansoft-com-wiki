# Light

A light entity represents a light source in the environment.

-   **light\_type**: The type of light source
    -   *Ambient*: An uniform light source.
    -   *Directional*: A directional light source, lighting everything
        in front of it.
    -   *Point*: A point light source.
    -   *Spot*: A spot light source, akin to a focused light or a
        torchlight.
-   **light\_flags**:
    -   *Static*: Whether the light is static. A static light can be
        further optimized, for example it could be baked in a lightmap
        or its shadow map can be precomputed instead of updated every
        frame.
    -   *Specular*: Whether the light produces specular reflections.
    -   *CastShadows*: Whether the light cast shadows.
    -   *SecondDepthShadows*: Whether to use the back faces to update
        the shadow maps.
    -   *Cookie*: Whether to use a projected texture.
    -   *CookieProbe*: Used in with *Cookie* specifies that the
        projected texture is a light probe, aka that it contains some
        precomputed lighting information to be used by the light.

## Color

-   **intensity** *(bound)*: The light intensity.
-   **diffuse** *(bound)*: The light's diffuse color component.
-   **specular** *(bound)*: The light's specular color component, this
    is the color used to similuate the light's reflections.

## Attenuation

-   **mode**: Indicates the type of attenuation, the attenuation is the
    light's intensity falloff over distance.
    -   *None*: the intensity is constant all over the light's influence
        area.
    -   *Linear*: the intensity of the lights falloff linearly to reach
        0/no intensity at the light's **far\_end** distance.
    -   *Bicubic*: the intensity of the lights falloff following a
        bicubic curve to reach 0/no intensity at the light's
        **far\_end** distance.
    -   *Complex*: a more complex fallback setup by **near\_start**,
        **near\_end**, **far\_start**, **far\_end**, this is similar to
        3DSMax's standard light's setup.
-   **cosine\_bias**: The cosine bias indicates how much back faces are
    lit, at zero backfaces are *not lit* at all, as it reach one back
    faces are lit in the same way as front faces. Note by *not lit* what
    is really meant is "take the **shadow\_color**".

## Shadow

-   **shadow\_color** *(bound)*: Specifies the color used for back faces
    and shadowed areas.
-   **filter**: The type of shadow filter when the light cast shadows.
    -   *LowQuality*: The cheapest filter available, produces a blocky,
        usually single sample, low quality filter.
    -   *MediumQuality*: A decent compromise between speed and quality,
        produces a decently smoother shadow border, usually using 4
        shadow samples.
    -   *HighQUality*: The "best quality" filter available, usually at
        least 16 shadow samples, note that it procudes a much sharper
        shadow edge on most platform.
-   **cookie**: Name of the projected texture associate with the light,
    this can be a 2d texture for spot lights, or a cross cubemap if
    using a *CookieProbe*.
-   **size**: Resolution of the shadow map.
-   **bias**: The shadow map bias factor.
-   **near\_plane\_distance**: The near clipping plane distance used to
    build the shadow map.
