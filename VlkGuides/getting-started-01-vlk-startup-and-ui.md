# Getting Started 01: Valkyrie Startup and Intro to User Interface

This tutorial will teach you the basics to navigate through the Valkyrie Engine screens and create your very first app.

## Create your first project

Start the Valkyrie Launcher and you will get two tabs:

- **Recent**: the apps you have been working on will be displayed there.
- **Templates**: these are shortcut templates for you to select in order to create a new app. You can reconfigure the content at your will once opened.

Firstly, swap to the **Templates** tab and select the **New Project** tab.
You will be prompted to select a template to create a new application.

To better understand the interactions in Valkyrie, we recommend that for your first trial you select the **AnimMixer** template. Once selected, a **Create Project** screen pops up.
Select a **Name** for your application.
Choose the directory where you want to save your app in the Location field & proceed by clicking on **Create**. The application will be created and saved in your documents.
Note that by default, applications are located in **C:/User/USER_NAME/Vlk Projects/** on Windows and **/Users/USER_NAME/Vlk Projects** on macOS.

## User Interface
![entire_vlk_scene_01](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/entire_vlk_scene_01.png)  

The Image above shows the default User interface Layout.

### 01: Project Manager & Viewport Tools

![Center_View___Transform_Gif](uploads/c140f5e1b6b4130a9ecc3ff6763e7d5e/Center_View___Transform_Gif.gif)  
![center_view_transform_button_01](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/center_view/center_view_transform_button_01.png)  

Located on the Top Left of the Screen, 3 major tabs.


**A) Center (File Manager)**

![center_view_transform_button_01](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/01_Valkyrie_Startup/screenshot_2021-07-14_at_11.15.53_am.jpg)  

**Application**

1. Open an existing project
2. Create a New project
3. Reload the open application

**Levels**
1. Save Current Level
2. Create new level
3. Save the Current Level as

**Tools**
1. Publish the Application

**B) View (Viewport window)**

![center_view_transform_button_02](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/01_Valkyrie_Startup/screenshot_2021-07-14_at_11.16.48_am.jpg)  

**Layout**
1. Set Single View
2. Set Two View

**Utils**
1. Move the Camera to the selected Entity
2. Set to Fullscreen
3. Display Selectable Icons
4. Display Physic Bounding Box

**Render Mode**
1. Set the regular render mode
2. Set the VR render mode
3. Set the AR render mode

**C) Transform (Gizmo Setting)**

![center_view_transform_button_03](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/01_Valkyrie_Startup/screenshot_2021-07-14_at_11.24.32_am.jpg)  

**Gizmo**
1. Move Tool
2. Rotate Tool
3. Scale Tool
4. Selection Tool
5. Clear Selection
6. Show the Selection Box
7. Ground the Entity
8. Transfer WorkCamera Translation to elecr

**Move & Rotate**
1. Set to World Axis
2. Set to Mesh (Local) Axis

**Snapping**
1. Move Angular Snap
2. Rotate Angular Snap

### 02 Library Overview

The **Library menu** allows you to import assets inside your application and it is split into 7 tabs:  
![Library Menu](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/a82238140f51d83700488b27723c7ae27f4fb8b9.jpeg)

**A) Levels**
- Your project will be saved as a **Level** and displayed in this tab. If your scenes are complex, you can split them into different levels and call them individually via a master level.
- To change between levels, drag the selected level from the library and drop it in the timeline
- We recommend in addition that you save your work in progress incrementally under new levels so that you can go back to a previous iteration if anything goes wrong.
- Modifying attributes in a later iteration does not affect previous iterations.
- All iterations / levels will be displayed in this tab.

**B) Entities**
- The **Entities** tab is used to create built-in assets such as Camera, Mesh & Lights.

For a full list, [Click Here for Entity](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefEntities)

**C) Actions**
- This tab contains a list of **Actions** that allow you to create interactions of various complexities. It features a visual logic engine that will empower you to create anything your mind can think of without writing a single line of code.

For the full list, [Click Here for Action](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefActions)

**D) Events**
- **Events** are a set of conditions that allow you to define when **Actions** are triggered. Such as User input via virtual button, or to trigger an animation when a character collides with an asset.

For the full list, [Click Here for Event](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefEvents)

**E) Data**
- The Data tab contains all of the imported assets. To import an element, simply copy it in the **C:\Users\USER_NAME\Documents\VlkApps\Your-Project\data** folder. You can create subfolders, however to avoid missing textures when exporting, all assets must be contained within the **data** folder.

**F) Application Template Folder**
- Displays the templates contained in your project.

**G) Refresh**
- Refreshes the data folder for newly added and overwritten files.


### 03 Timeline & Outliner
![timeline_outliner_gif.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/timeline_grp/timeline_outliner_gif.gif)

#### Timeline
Adjacent to the Right section, you will find the timeline of the entire project and individual time bars for each **Entity**, **Action** and **Event** that is within the current level.

#### Outliner
On the Left side of the **Timeline Tab**, the list contains every single **Entity**, **Action** and **Event** that is within the current level. From here, each item can be manipulated in a layered system where components are grouped, in a hierarchical arrangement, such that lower layers provide functions and services that support the functions and services of higher layers.

Above the Outliner, a row of icons are located here to help manipulate both the timeline and the outliner.  
![timeline_01.png](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/timeline_grp/timeline_01.png)  

![timeline_icon_03.png](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/timeline_grp/timeline_icon_03.png)  
Icon List  
Starting from the Left  
01. **Expand Layers:** Expand or Collapse every single layers within the Outliner.  
02. **Isolate:** Single out a single selected object within the outliner.  
03. **Play Button:** Start the timeline from 0:00.  
04. **Pause Button:** Pause at the current position on the play time.  
05. **Stop Button:** Halts the entire timeline and reset the timeline play time to 0:00.  

![timeline_icon_02.png](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/timeline_grp/timeline_icon_02.png)  
Icon List  
Starting from the Left  
01. **Reload Scene:** Reloads the entire scene.  
02. **Toggle Time Bars:** Display the timeline.  
03. **Toggle Timeline:** Hide time bars of the timeline.  
04. **Delete Selection:** Delete the selected objects in the Outliner.  
05. **Toggle Visibility Actions:** To turn the visibility of the Actions within the Outliner On or Off.  
06. **Toggle Visibility Events:** To turn the visibility of the Actions within the Events On or Off.  
07. **Toggle Visibility Animations:** To turn the visibility of the Animations within the Outliner On or Off.  
08. **Toggle Visibility Children:** To turn the visibility of the Children of Hierarchy within the Outliner On or Off.  
09. **Toggle Visibility Camera:** To turn the visibility of the Camera within the Outliner On or Off.  
10. **Toggle Visibility Lights:** To turn the visibility of the Light within the Outliner On or Off.  

### 04: Inspector
![inspector_gif_01.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/inspector/inspector_gif_01.gif)  

Within the Inspector window, this is the location to go to if you need to setup any in-scene settings of individual selected object such as **Name and Identity**, **Timeline Setting**, **Transform Coordination**, **Layer Settings** and many more other specific settings based on the type of asset.  

### 05: Material Editor
![material_editor_gif_01.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/material_editor/material_editor_gif_01.gif)  

The Material Editor allows you to add your texture maps to individual Entities. It also provides the ability to directly manipulate how much a texture can affect in-scene.  
For more details, [Click Here](https://gitlab.talansoft.com/Pub/Wiki/wikis/VlkGuides/Material-Editor).  

### 06: Windows
Every Menus and Windows mentioned above can be visibly toggled and eventually the entire menu setup can be customised to your own preference.  
![menu_window_gif 01.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/windows_menu/menu_window_gif 01.gif)  

#### Customize User Interface
![undocking_gif_01.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/windows_menu/undocking_gif_01.gif)  

* To Undock, right click on the tabs of the window and select Undock. (Image Above for Reference)

![docking_gif_01.gif](https://cdn2.talansoft.com/ftp/img/tutorial_basic_image/windows_menu/docking_gif_01.gif)  

* To Dock windows, hold the **Ctrl** and **Left Mouse Click** on the window dock.
* Drag the window to the Square Icons that display the window orientation within the UI.
* Release both buttons to dock the newly placed windows.
* (Image Above for Reference)

## Shortcuts

### Navigation

Use the following controls to navigate in your scene:

- **ALT + Left Click**: Viewport Camera Orbit.
- **ALT + Right Click**: Progressive Zoom in / out.
- **ALT + Middle Mouse Button**: Viewport Camera Pan.
- **Right Click**: Viewport Camera Rotate.
- **Mousewheel**: Incremental Zoom in / out.
- **W, A, S, D Keys**: FPS-like Navigation.
- **R, F Keys**: Viewport Camera Altitude Control.
- **ALT + SPACE**: Toggle Between Work Camera & Production Camera.
- **CTRL + SPACE**: Timeline Play / Pause.
- **Double mouse right click** on the Final camera mode of a First Person Camera: Start playing the timeline and capture mouse movement input. Press **Esc** to release the input capture.
- **CTRL + Enter**: Toggle Full Screen.

### Workplace

- **CTRL + Hover**: Show tooltips.
- **CTRL + move** on a form: Rearrange screens layout and dock the panels.
- **CTRL + S**: Save your work in the active level.
- **CTRL + SHIFT + S**: Save your work as a new level.
- **Changes**: All changes are recorded in the history panel, accessible on the form list.
- **CTRL + Z**: Undo latest modification.
- **CTRL + Y**: Redo latest modification.
- **CTRL + M**: Toggle on/off the Material Editor.
- **CTRL + Alt + P**: Advanced display options.

### Selection

- **Left Click**: Object Selection.
- **CTRL + F** or **Alt + 0**: Focus on selected entity.
- **Alt + 1**: Focus on the left side of selected entity.
- **Alt + 2**: Focus on the right side of selected entity.
- **Alt + 3**: Focus on the bottom side of selected entity.
- **Alt + 4**: Focus on the top side of selected entity.
- **Alt + 5**: Focus on the back side of selected entity.
- **Alt + 6**: Focus on the front side of selected entity.
- **CTRL + D**: Unselect.
- **CTRL + T**: Toggle entity bounding box.
- **Shift + move/resize a timeline bar**: Move all the timelines of the linked & sub-elements.

### Gizmo

- **CTRL + E**: Toggle the scale controls.
- **CTRL + Q**: Translation mode.
  - **Shift + translation drag**: Create translated copy of the entity.
  - **CTRL + translation drag**: Snaps translation to grid.
  - **Tab**: Toggle between Local and World translation mode.
- **CTRL + G**: Move the bottom of selected entity to nearest ground.
- **CTRL + W**: Rotation mode.
  - **CTRL + rotation drag**: Entity rotates by 15 degrees snaps.
- **CTRL + R**: Select mode.