# First Person Camera Template

Classic First Person Camera environment that enables you to walk freely in your 3D world. This Project Template includes a set of modular building & prop pieces for you to use to create your own environment as well. 
This Project Template allows you to quickly generate environment for you to prototype your ideas with. 
Do ensure that Valkyrie is installed on your computer for this Project Template to run smoothly. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/01_ingame_03.png)
Captured inside Valkyrie. 

# How to play

To move around, on the keyboard
- W to Move Forward
- S to Move Backward
- A to Move Left
- D to Move Right

The camera view follows the usage of the Mouse
- To pan the camera: Hold the Right Click and Move the Mouse around.


# How to use the Project Template

### Drag the Building Pieces 

#### 1) Locate the Objects 
**a)** Go to the Data Files.
 
![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/02_datalogo.PNG)
 
**b)** All assets are located in the **Assets Folder**.
 
**c)** Pick the object you want to use and **Drag it** into either the **Viewport** or **Timeline** directly.


#### 2) Setting up the Object Collision
**a)** Under the **Inspector tab**, locate the sub-section under it called **Physic**. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/03_physic_tab.PNG)

**b)** In the **Shape_type**, change the shape design to **Mesh**

**c)** Right below it, **Size** set the size of the collision, ensure all 3 values are at least **1.00**. 

**d)** This now allows the object to be have collision, allowing your camera to not go through it.

**e)** **Debug Tip**. Sometimes when doing this, the object may disappear. A quick way to solve this is to have that missing object selected in your timeline. Then select the **Refresh** button and it should reappear.  

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/04_refresh.PNG)

#### 3) Setting up the Shared Materials
This is an **Optional** step, however it provides an ease & conveniences for allowing multiple duplicated objects to share the same Material setting globally. 

**a)** Under the **Inspector tab**, locate the sub-section under it call **Character**. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/05_character_tab.PNG)

**b)** Enable the option **share_materials**. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/06_shared_material.PNG) 

**c)** **Debug Tip**. Sometimes when doing this, the object may disappear. A quick way to solve this is to have that missing object selected in your timeline. Then select the **Refresh** button and it should reappear.  

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/04_refresh.PNG)

# Tips

### Ensuring your models are perfectly placed 

#### Translate Values
Avoid having decimals values within the **Translate** values especially for the bigger pieces to avoid the misalignment. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/07_transform.PNG)

#### Snapping Move   
**a)** Enable the Snapping function to move specific values to ensure proper modulation among the different objects. 
Recommended Settings 
*  Move set to 10. This will always ensure when moving, it + or - 10 to any translate movement.
*  Rotate to 15. This will always ensure when rotating, it + or - 15 to any translate movement.

**b)** When manipulating the object placement in the viewport, to enable the Snapping Function. Hold the **Crtl** key before you do any movement. 

**c)** While holding **Ctrl** + **Shift**, you can quickly duplicate the selected object while have it snap properly. 

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/08_snapmenu.PNG)

# Downloads

- [Vpk Download](https://cdn2.talansoft.com/ftp/samples/FirstPersonCamera-Sample-V03.vpk). This is the exported application that you can experience on your phone with [We3D](/vlk/downloads#we3d) or desktop with [Valkyrie](/vlk/downloads#vlk).
- [Vlk project download](https://cdn2.talansoft.com/ftp/samples/FirstPersonCamera-Sample-V03.zip). This is the source project that you can tinker with in the [Valkyrie editor](/vlk/downloads#vlk).

# Links

You might also be interested in these templates:
- [Flappy bird](./flappy-bird)
- [Car configurator](./Car-Configurator)

# Additional Screenshots 
![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/09_ingame_01.png)

![img](https://cdn2.talansoft.com/ftp/img/first_person_camera/10_ingame02_01.png)