# Get started with Valkyrie Engine

This tutorial will teach you the basics to navigate through the Valkyrie Engine screens and create your very first app.

- [Create your first application](#create-your-first-project)
- [User Interface](#user-interface)
- [Library Overview](#library)
- Shortcuts
  - [Navigation](#navigation)
  - [Workplace](#workplace)
  - [Selection](#selection)
  - [Gizmo](#gizmo)

<a name="create-your-first-project"></a>
## Create your first project

Start the Valkyrie Launcher and you will get two tabs:

- **Recent**: the apps you have been working on will be displayed there.
- **Templates**: these are shortcut templates for you to select in order to create a new app. You can reconfigure the content at your will once opened.

Firstly, start with selecting the **New Project** tab.
You will be prompted to select a template to create a new application.

To better understand the interactions in Valkyrie, we recommend that for your first trial you select the **AnimMixer** template. Once selected, a **Create Project** screen pops up.
Select a **Name** for your application.
The directory containing the template you selected is indicated in the Base App field.
Choose the directory where you want to save your app in the Location field & proceed by clicking on **Create**. The application will be created and saved in your documents.
Note that by default, applications are located in **C:/User/USER_NAME/Vlk Projects/** on Windows and **/Users/USER_NAME/Vlk Projects** on macOS.

You are now in the Valkyrie workplace. Note that for system performance purpose, the levels are not automatically loaded and the initial screen initially displays a cube.
From there, you need to drag & drop your project level from the bottom left area on the viewport or the timeline, and confirm that you want to set the level ‘Orbit Camera’ in order to load your application.

Behold, you now have a beautiful sphere before you. With this template, you have successfully created your first app!

Before we start, it is important to understand that you are already in your application. What you see is what you get regardless of the platform you intend to deploy on (Windows, MacOS, IOS…).

Orbit Camera is one of the most basic setup you can create: a sphere, a light and a camera. What this app does, is that when you move the camera with the mouse it orbits around the sphere. Simple.

Whatever the changes you do later on, remember to save your level after each iteration.
If you close Valkyrie, you can open your app by selecting it in the launcher, or by double-clicking on the Valkyrie (**.vlk**) file in your application directory.

Now you might be wondering what you will be able to do, so let us dive into the specificities of the Valkyrie Engine from this point.

<a name="user-interface"></a>
## User Interface 

Start by getting to know the function of each panel detailed below.

[![User Interface Overview](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/66ace60f05e5ed616097392d58c364ccc5e38ca1.jpeg)UI-General.jpg1280×676 77.5 KB](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/66ace60f05e5ed616097392d58c364ccc5e38ca1.jpeg)


For instant help, hover your mouse over a menu, button or object while pressing **CTRL**, a contextual window will appear featuring the description of the item.

1. **Viewport (Editor)**:
   The viewport allows you to visualize all aspects of your scene.
   Making a **Right Click** on **Final** at the **Top-Left Corner** of the Viewport allows you to visualize each channel individually.
   ![Viewport Rendering Modes](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/5a8d9ba03edc1a40507e7a54dbc09106e9783042.png)
2. **Library**:

- The library contains all the imported & built-in assets you can use in your scene.

1. **Object Configuration (Inspector)**:

- All scene objects can be configured when selected. The object configuration allows you to configure all attributes of the selected item.

1. **Scene Assets**:

- Scene assets displays all the assets, actions & entities present in the scene.

1. **Timeline**:

- The timeline allows you to visualise which assets, actions & entities are active in the timeline.
- Each layer, asset can have an independent timeline depending on the interactions you wish to create.
- Note that you can add up to 5 timelines in the workplace.

1. **Material Editor**:

- When an asset is selected, its material properties will be displayed in the material editor.
- You can customize the materials there to match the output you’re looking for.

1. **Console**:

- The console logs all actions performed in the scene and brings potential errors to your attention.

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

- The **Entities** tab is used to create built-in assets such as:
- **Cameras**
- **Characters**
- **Character Nodes**
- **Colliders**
- **Data Tables**
- **Dummies**
- **Factories**
- **Layers**
- **Lights**
- **Post Effects**
- **Particle Systems**
- **Primitives**
- **Text**
- **Widgets**

**c) Actions**

- This tab contains a list of **Actions** that allow you to create interactions of various complexities. It features a visual logic engine that will empower you to create anything your mind can think of without writing a single line of code.

**d) Events**

- **Events** are a set of conditions that allow you to define when **Actions** are triggered. For example, to start an animation if the user presses a certain UI element, or to trigger an animation when a character collides with an asset. Your imagination is the limit!

**e) Data**

- The Data tab contains all of the imported assets. To import an element, simply copy it in the **C:\Users\USER_NAME\Documents\VlkApps\Your-Project\data** folder. You can create subfolders, however to avoid missing textures when exporting, all assets must be contained within the **data** folder.

**f) Application Template Folder**

- Displays the templates contained in your project.

**g) Refresh**

- Refreshes the data folder for newly added and overwritten files.

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
