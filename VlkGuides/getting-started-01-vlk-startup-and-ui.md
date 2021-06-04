# Getting Started 01: Valkyrie Startup and Intro to User Interface.

This tutorial will teach you the basics to navigate through the Valkyrie Engine screens and create your very first app.

- [Create your first application](#create-your-first-project)
- [User Interface](#user-interface)
- [Library Overview](#library)
- Shortcuts
  - [Navigation](#navigation)
  - [Workplace](#workplace)
  - [Selection](#selection)
  - [Gizmo](#gizmo)
- [Comments](#comments)

<a name="create-your-first-project"></a>

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

<a name="user-interface"></a>

# User Interface
![Entire_VLK_Scene_01](uploads/1767c222a93469debd828adfa4450168/Entire_VLK_Scene_01.png)

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

<a name="library"></a>
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
![Timeline_01](uploads/25cb1df5f84c0c4f1e1c23c4238e97e4/Timeline_01.PNG)

#### Outliner

On the Left side of the **Timeline Tab**, 

here contains the list of the every single **Entity**, **Action** and **Event** that is within the viewport of the current level. 



#### Timeline
Adjacent to the Right section, the timeline of the entire project and individual time bar for each **Entity**, **Action** and **Event** that is within the viewport of the current level. 















## Shortcuts

<a name="navigation"></a>
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

<a name="workplace"></a>
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

<a name="selection"></a>
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

<a name="gizmo"></a>
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

<a name="comments"></a>
# Comments
Join our Discord server to comment and get help: <a href="https://discord.gg/ZuBJtpN4Ce">Join</a> - <a class='btn btn-success' href='https://discord.com/channels/739876867854827582' target='_blank'>Open</a>