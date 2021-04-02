# Material Editor
Whether you're into physically based or stylized shaders, Valkyrie's **Material Editor** allows you to create any type of shaders in an intuitive way.

If the material editor is not showing in the Valkyrie workplace, you can display it by either:
- clicking on material editor option in the **form list** on the upper right corner of the screen
- using the shortcut **CTRL + M**

Let's now review the different options available in the editor.

## Channels
### Diffuse:
The diffuse color or texture map.
If a texture is in the diffuse channel, the diffuse modulate option allows you to multiply a color with the texture.

### Opacity:
There are 2 methods to enable opacity.
- **The transparency method:**
If the diffuse bitmap contains an alpha channel, enabling the transparent flag will enable transparency. Modifying the diffuse channel alpha value will increase or reduce the intensity of the effect. This method is recommended for translucent materials such as glass and windows.
![Opacity Illustration](https://cdn2.talansoft.com/img/docs/material_editor/VLK_Opacity.gif)

- **The cut-out method:**
Adding an opacity map in the opacity channel will cut-out the transparent pixels in a binary way. This method is recommended for hair & foliage. You can use the TransparentAA flag, which on hardware that supports it, will apply anti-aliasing to the masked edges.
![Cut-Out Illustration](//cdn2.talansoft.com/img/docs/material_editor/VLK_Cut_Out.gif)

### Bump
The bump channel allows you to use a normal map or a height map. Choose the relevant flag to enable the adequate effect.
The intensity of the bump can be controlled by modifying the bump's alpha value.
![Bump Illustration](/uploads/talansoft/original/1X/ac80eebd8826653bfe64d373b501f051fbbcd53c.gif)

### Specular
The specular channel allows you to create more realistic shaders.
![Reflections Illustration](//cdn2.talansoft.com/img/docs/material_editor/VLK_Reflections.jpg)
The RGB value define the intensity of the specular highlights while the alpha value controls the glossiness.

When creating PBR assets, the glossiness map must be featured in the specular map's alpha channel. It is recommended to use the TGA file format.
![Glossiness Illustration](//cdn2.talansoft.com/img/docs/material_editor/VLK_Gloss.gif)
The alpha value will increase or reduce the intensity of the glossiness, 1 being mirror & 0 being matte.

### Environment:
Overwrite the Image based lighting specular environment map.

### Ambient:
The ambient channel uses your model's UV Channel 2.
It is used for AO maps or lightmaps. The ambient bitmap is multiplied with the diffuse to blend the shadows.

### Emissive:
The emissive channel is used to define a shader's self-emission.
The RGB value defines the color of the emission while the alpha value controls the intensity of the effect.
![Emissive Illustration](//cdn2.talansoft.com/img/docs/material_editor/VLK_Emissive.gif)

### Refraction:
The refraction channel is used to refract light through transparent surfaces.
To enable this effect the transparent flag must be enabled.
The RGB value define the exit color of the light while the alpha value controls the index of refraction (IOR).

## Misc
### Flags:
Flags are properties and special effects you can add to your materials. They can be added via the **Flag** field search aid. Certain flags can also be activated through option buttons, for example **diffuse modulate** next to the Diffuse channel.

Some of the options available are:
- **Double Sided**: Enables double sided materials.
- **No Shadow**: Meshes will not cast shadows.
- **No Lighting**: Materials will be flat shaded.
- **No Draw**: Materials will not be drawn.
- **No Collision**: Collisions will be disabled.

### Shaders:
- **Vertex Shader**: Vertex Shaders allow you to write customized HLSL shaders affecting your meshes. This is useful to create convincing special effects such as lava, oceans, etc.
- **Pixel Shader**: Pixel Shaders allow you to write customized HLSL pixel shaders.

You can code your own shader in TSEdit, that will open once you click the shader field search aid button.
You can also download and use pre-existing shaders. Just place them in your project folder under VlkApps\PROJECT_NAME\data\shaders
## Sampler states
### Filters:
- **Smooth**: Bilinear / Trilinear Filtering depending on the target hardware.
- **Sharp**: Trilinear / Anisotropic 4x-16x Filtering depending on the target hardware.
- **Point**: No Filtering. Pixelated look.

### Wrap:
- **Repeat**: The texture will be repeated pixel to pixel (Useful for non-organic UVs).
- **Clamp**: Stretches the last pixel row (Useful for organic UVs).
- **Mirror**: The texture will be mirrored pixel to pixel.
- **Mirror once**: The texture will be mirrored once pixel to pixel.
- **Border**: Texture pixels outside the [0,1] range will be used as the border color.

### Blending:
A variety of blending methods.
![Blending Illustration](//cdn2.talansoft.com/img/docs/material_editor/VLK_Blending.gif)

# Comments

https://forum.talansoft.com/t/tutorial-material-editor/18
