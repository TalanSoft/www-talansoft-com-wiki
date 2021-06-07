# Getting Started 01: Valkyrie Startup and Intro to User Interface.

This tutorial will teach you the basics to navigate through the Valkyrie Engine screens and create your very first app.

If you are already familiar with the User Interfere, you may skip this tutorial and check the next few episode.
* - [Getting Started 02: Import and Export](VlkGuides/getting-started-02-Import-and-Export)
* - [Getting Started 03: Introduction to Events & Action](VlkGuides/getting-started-03-intro-events-n-actions)

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

# User Interface
![Entire_VLK_Scene_01](uploads/5896105bd7da2603adb97acdd4474367/Entire_VLK_Scene_01.png)

The Image above shows the default User interfere Layout.

## 01: Project Manager & Viewport Tools

![Center_View___Transform_Gif](uploads/c140f5e1b6b4130a9ecc3ff6763e7d5e/Center_View___Transform_Gif.gif)

Located on the Top Left of the Screen, 3 major tabs.


**A) Center (File Manager)** ![Center_View___Transform_Button_01](uploads/baa75bb9baa00f2613b9e552fff56297/Center_View___Transform_Button_01.PNG)

**Application**
- Open an existing project
- Create a New project
- Reload the open application

**Levels**
- Save Current Level
- Create new level
- Save the Current Level as

**Tools**
- Publish the Application

**B) View (Viewport window)** ![Center_View___Transform_Button_02](uploads/c0ba916d384afcb02a6d41c1d57eb926/Center_View___Transform_Button_02.PNG)

**Layout**
- Set Single View
- Set Two View

**Ultils**
- Move the Camera to the selected Entity
- Set to Fullscreen
- Display Selectable Icons
- Display Physic Bounding Box

**Render Mode**
- Set the regular render mode
- Set the VR render mode
- Set the AR render mode

**C) Transform (Gizmo Setting)** ![Center_View___Transform_Button_03](uploads/501a2404d8f8ab0825dac76fb6d45c19/Center_View___Transform_Button_03.PNG)

**Gizmo**
- Move Tool
- Rotate Tool
- Scale Tool
- Selection Tool
- Clear Selection
- Show the Selection Box
- Ground the Enity
- Transfer WorkCamera Translation to elecr

**Move & Rotate**
- Set to World Axis
- Set to Mesh (Local) Axis

*Snapping**
- Move Angular Snap
- Rotate Angular Snap

## Library Overview

The **Library menu** allows you to import assets inside your application and it is split into 7 tabs:
![Library Menu](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/a82238140f51d83700488b27723c7ae27f4fb8b9.jpeg)

**a) Levels**

- Your project will be saved as a **Level** and displayed in this tab. If your scenes are complex, you can split them into different levels and call them individually via a master level.
- We recommend in addition that you save your work in progress incrementally under new levels so that you can go back to a previous iteration if anything goes wrong.
- Modifying attributes in a later iteration does not affect previous iterations.
- All iterations / levels will be displayed in this tab.

**b) Entities**

- The **Entities** tab is used to create built-in assets such as Camera, Mesh & Lights.

For a full list, [Click Here for Entity](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefEntities)

**c) Actions**

- This tab contains a list of **Actions** that allow you to create interactions of various complexities. It features a visual logic engine that will empower you to create anything your mind can think of without writing a single line of code.

For the full list, [Click Here for Action](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefActions)

**d) Events**

- **Events** are a set of conditions that allow you to define when **Actions** are triggered. Such as User input via virtual button, or to trigger an animation when a character collides with an asset.

For the full list, [Click Here for Event](https://gitlab.talansoft.com/Pub/Wiki/wikis/Vlk/RefEvents)

**e) Data**

- The Data tab contains all of the imported assets. To import an element, simply copy it in the **C:\Users\USER_NAME\Documents\VlkApps\Your-Project\data** folder. You can create subfolders, however to avoid missing textures when exporting, all assets must be contained within the **data** folder.

**f) Application Template Folder**

- Displays the templates contained in your project.

**g) Refresh**

- Refreshes the data folder for newly added and overwritten files.


## 03 Timeline & Outliner
![Timeloine___Outliner_Gif](uploads/cf87bd9c131b85661cd0d9657fcb1649/Timeloine___Outliner_Gif.gif)

#### Timeline
Adjacent to the Right section, the timeline of the entire project and individual time bar for each **Entity**, **Action** and **Event** that is within the viewport of the current level.

#### Outliner

On the Left side of the **Timeline Tab**, the list contains every single **Entity**, **Action** and **Event** that is within the viewport of the current level. From here, each item can be manipulated in a layered system where components are grouped, in a hierarchical arrangement, such that lower layers provide functions and services that support the functions and services of higher layers.

Above the Outliner, a row of icons are located here to help manipulate both the timeline and the outliner. 
![Timeline_Icon_01](uploads/e5d26ca8e92d2f81edab9bc6d8f5f4a9/Timeline_Icon_01.PNG)

![Timeline_Icon_03](uploads/deaef475c61dd8b9dcc1305bb6dfeef7/Timeline_Icon_03.png)
Icon List
Starting from the Left
01. **Expand Layers:** Expand or Collapse every single layers within the Outliner.
02. **Isolate:** Single out a single selected object within the outliner.
03. **Play Button:** Start the timeline from 0:00. 
04. **Pause Button:** Pause at the current position on the play time.
05. **Stop Button:** Halts the entire timeline and reset the timeline play time to 0:00.

![Timeline_Icon_02](uploads/bde2f9195834c906007e9c5465d3db0a/Timeline_Icon_02.png)
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


## 04: Inspector
![Inspector_Gif_01](uploads/395299d5e179c876e7583f0d7ddd0a57/Inspector_Gif_01.gif)

Within the Inspector window, this is the location to go to if you need to setup any in-scene settings of individual selected object such as **Name and Identity**, **Timeline Setting**, **Transform Coordination**, **Layer Settings** and many more other specific settings based on the type of asset.

## 05: Material Editor
![Material_Editor_gif_01](uploads/650c33a5a4ad999d61d8a47b551ebafb/Material_Editor_gif_01.gif)

The Material Editor allows you to add your texture maps to individual Entities. It also provides the ability to directly manipulate how much a texture can affect in-scene. 
For more details, [Click Here](https://gitlab.talansoft.com/Pub/Wiki/wikis/VlkGuides/Material-Editor). 

## 06: Windows
Every Menus and Windows mentioned above can be visibly toggled and eventually the entire menu setup can be customised to your own preference.
![Menu_Window_Gif_01](uploads/8a71902830fbb1df8f5b5551db79b186/Menu_Window_Gif_01.gif)   


### Customise User Interfere 
![Undocking_Gif_01](uploads/fbc86f30a68ca8007f0afe7874b3dbec/Undocking_Gif_01.gif) 

* To Undock, right click on the tabs of the window and select Undock. (Image Above for Reference)  

![Docking_Gif__01](uploads/c136f512992f2e84206f5ff90fc8a0cb/Docking_Gif__01.gif) 

* To Dock windows, hold the **Ctrl** and **Left Mouse Click** on the window dock.
* Drag the window to the Square Icons that display the window orientation within the UI. 
* Release both buttons to dock the newly placed windows. 
* (Image Above for Reference) 


# Shortcuts

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
