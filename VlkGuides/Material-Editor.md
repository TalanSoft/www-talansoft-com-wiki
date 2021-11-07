---
title: Valkyrie getting started 03 | Material Editor
meta-description: Get started with Valkyrie - material editor
---

# Getting Started 03: Valkyrie Material Editor

Whether you're into physically based or stylized shaders, Valkyrie's **Material Editor** allows you to create any type of shaders in an intuitive way.

If the material editor is not showing in the Valkyrie workplace, you can display it by either:
- clicking on material editor option in the **form list** on the upper right corner of the screen
- using the shortcut **CTRL + M**

![Material_Editor](https://cdn2.talansoft.com/ftp/vids/animated_gif-downsized_large.gif)

Let's now review the different options available in the editor.

# Channels

## Diffuse
The diffuse color or texture map.
If a texture is in the diffuse channel, the diffuse modulate option allows you to multiply a color with the texture.

## Opacity
There are 2 methods to enable opacity.
- **The transparency method:**
If the diffuse bitmap contains an alpha channel, enabling the transparent flag will enable transparency. Modifying the diffuse channel alpha value will increase or reduce the intensity of the effect. This method is recommended for translucent materials such as glass and windows.
![Opacity Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Opacity.gif)

- **The cut-out method:**
Adding an opacity map in the opacity channel will cut-out the transparent pixels in a binary way. This method is recommended for hair & foliage. You can use the TransparentAA flag, which on hardware that supports it, will apply anti-aliasing to the masked edges.
![Cut-Out Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Cut_Out.gif)

## Bump
The bump channel allows you to use a normal map or a height map. Choose the relevant flag to enable the adequate effect.
The intensity of the bump can be controlled by modifying the bump's alpha value. The RGB value controls the relief mapping strength.
![Bump Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Bump.gif)

## Specular
The specular channel allows you to create more realistic shaders.
![Reflections Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Reflections.jpg)
The RGB value define the intensity of the specular highlights while the alpha value controls the glossiness.

When creating PBR assets, the glossiness map must be featured in the specular map's alpha channel. It is recommended to use the TGA file format.
![Glossiness Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Gloss.gif)
The alpha value will increase or reduce the intensity of the glossiness, 1 being mirror & 0 being matte.

## Environment
Overwrite the Image based lighting specular environment map. This is a reflection cubemap or 2d spheremap.

## Ambient
It is used for AO maps or lightmaps. The ambient bitmap is multiplied with the diffuse to blend the shadows.

The ambient channel uses your model's UV Channel 2 if its present in the 3d model, when not present it will use first UV channel.

## Emissive
The emissive channel is used to define a shader's self-emission.
The RGB value defines the color of the emission while the alpha value controls the intensity of the effect.
![Emissive Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Emissive.gif)

## Refraction
The refraction channel is used to refract light through transparent surfaces. It is automatically assigned and you shouldn't put any texture in it.

To enable this effect the transparent flag must be enabled.
The RGB value define the exit color of the light while the alpha value controls the index of refraction (IOR).

# Sampling

## Filters
- **Smooth**: Bilinear / Trilinear Filtering depending on the target hardware.
- **Sharp**: Trilinear / Anisotropic 4x-16x Filtering depending on the target hardware.
- **Point**: No Filtering. Pixelated look.

## Wrap
- **Repeat**: The texture will be repeated pixel to pixel (Useful for non-organic UVs).
- **Clamp**: Stretches the last pixel row (Useful for organic UVs).
- **Mirror**: The texture will be mirrored pixel to pixel.
- **Mirror once**: The texture will be mirrored once pixel to pixel.
- **Border**: Texture pixels outside the [0,1] range will be used as the border color.

## Blending
A variety of blending methods that defines how the material are blended when set to Transparent.
![Blending Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Blending.gif)

# Misc

## Flags
Flags are properties and special effects you can add to your materials. They can be added via the **Flag** field search aid. Certain flags can also be activated through option buttons, for example **diffuse modulate** next to the Diffuse channel.

Some of the options available are:
- **Double Sided**: Enables double sided materials.
- **No Shadow**: Meshes will not cast shadows.
- **No Lighting**: Materials will be flat shaded.
- **No Draw**: Materials will not be drawn.
- **No Collision**: Collisions will be disabled.

## Polygon Offset
Set the scale and units used to calculate depth values. This is used to combat <a href="https://en.wikipedia.org/wiki/Z-fighting" target="_blank">Z-fighting</a> when you're using 3d models that you cant fix yourself.

- **x** is the factor, it specifies a scale factor that is used to create a
  variable depth offset for each polygon.
- **y** is units, it is multiplied by an implementation-specific value to create a
  constant depth offset. The initial value is 0.
