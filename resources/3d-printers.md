# 3D Printers formats (GCODE, STL, OBJ)

GCODE is a layered "3D" format used by 3D printers. In general it shouldn't be used directly for 3D models in Valkyrie applications since it encodes the mechanical movements a 3D printer would do to stack the 2D layers of material necessary to print an object.

While building your application you should use the source assets which are generally in .STL, .OBJ or other static 3D model formats.

Using GCODE directly only makes sense if you want to preview exactly what the 3D printer would do. Otherwise, better not use the source model of the GCODE, as you would not get a smooth 3D model in Valkyrie.

See for yourself what a layered 3D format looks like when zoomed in:  
![Layered_3D_format](https://cdn2.talansoft.com/ftp/img/tutorial_sample_images/Layered-3d-format.jpg)

A single layer in the layered 3D format which clearly show the path that a 3D printer would follow:  
![Layered_3D_format](https://cdn2.talansoft.com/ftp/img/tutorial_sample_images/3d-printer-path.jpg)

Sources:  
- [.GCODE File Extension](https://fileinfo.com/extension/gcode#:~:text=A%20GCODE%20file%20contains%20commands,printer%20should%20print%20a%20job.&text=GCODE%20files%20are%20created%20by,a%203D%20printer%20can%20read)
- [How To Import .GCODE Into Blender For Rendering 3D Print Visualizations](https://blender.stackexchange.com/questions/193086/how-to-import-gcode-into-blender-for-rendering-3d-print-visualizations)