---
title: Create an AR scene in less than 10 minutes with Valkyrie
meta-description: tutorial to create an augmented reality experience with Valkyrie
---
# Create an AR scene in less than 10 minutes with Valkyrie!

Software Requirements:
- [Valkyrie Engine](https://www.talansoft.com/vlk/downloads) to build the project and play it on your computer
- [We3D for iOS](https://itunes.apple.com/us/app/we3d/id1044059728?mt=8) to play your project and share it on iPhone & iPad

In this tutorial we are going to explain how to create a simple scene with an animated 3D asset that you can showcase in AR with your mobile.

## Step 1: Prepare the assets need for your AR scene
After designing your assets with your preferred 3D modelling suite, export them in one of following formats:
- FBX or DAE for animated & static assets.
- OBJ is also an option for static assets.
- JPG, PNG or TGA for textures (It is recommended to set a maximum texture resolution of 2048x2048px).

## Step 2: Create your AR scene Valkyrie project
- Open the Valkyrie Launcher & click on the New App tab.
- Select the template of your choice & click on create button located at the bottom-right corner.
  ![1](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/1.png)

- You will be prompted to select a name for your application.

- Take note that the folder used for your application is displayed in the **location** tab. By default (C:/Users/Username/Documents/VlkApps/App_Name).

- Confirm the creation of your application by clicking on the **Create** button.
  ![2](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/2.png)

- Upon creating your application, your Valkyrie Scene will be launched automatically, and you will be greeted with a blank level.
  ![3](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/3.png)

- To load the level from the template you selected earlier, click on the **Application Levels** tab.
  ![4](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/4.gif)

- If you save your scene using **CTRL+S** the changes made to the level you are working on will be saved without creating a new level.
- You have also the possibility to save your scene incrementally using **CTRL+SHIFT+S**. A new level will then be created.

## Step 3: Import the assets of your AR scene

- Go to your application folder (C:/Users/Username/Documents/VlkApps/App_Name).
- Place **all your assets** in the **Data folder**.
  ![4.5](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/4.5.png)

- Return to your scene and click on the **Application Data** tab.
- Click on the **Refresh the library** button.
  ![5](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/5.gif)

- Your assets will now be displayed in the library.

## Step 4: Set up your AR scene Valkyrie project

- Disable the template’s assets you don’t need.
  ![6](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/6.gif)

- Drag & Drop your **3D assets** in the timeline.
  ![7](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/7.gif)

- In this case, we are dealing with a giant dragon which may be too large for AR purposes.
  Scale your assets to fit your intended usage.
  Select your asset and either:
- Press **CTRL+E** to toggle the scale controls:
  ![8](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/8.gif)

- Navigate to the **Transform** configuration in the Inspector panel and set the scale manually:
  ![8.5](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/8.5.png)
  - It is recommended that you set the position of your asset as close as possible to the 0, 0 ,0 as it will be the anchor point of the AR Scene.

- If your asset is animated, you will need to add a **MixerAnimUpdate** action on your asset.
  - Go to the library panel and select the **action** tab. You can then select any action object by scrolling down, or typing the first letters of the object you are looking for.
  - Drag & Drop the **MixerAnimUpdate** action on your asset.
    ![9](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/9.gif)
  - Then you can press **CTRL+Space** to play / pause your scene, or press the play / pause button in the timeline.
    The scene will behave the same way in play mode as it will in AR so you can test out the final rendering of your app.
    ![10](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/9c182b2a5b38f2a3cc9aedfaffc598c25bea26d7_2_690x421.gif)

- It is time to add the textures to your asset.
  - Select your asset and its materials will be displayed in the material editor on the right side of the screen.
  - Drag & Drop the textures you copied previously in the data folder to the relevant channels, and configure the look & feel of your materials.
    ![11](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/11.gif)

- The last component to add are lights.
  - In this case, the Orbit Camera template we selected initially already featured a light. Nevertheless, let’s explore how to create a light from scratch.
  - Take note that unless your materials have the **unlit** flag checked, it is necessary to have at least one light in the scene.
  - In the library panel, select the **entity** tab, then Drag & Drop a **Light** entity in your scene and place it at your convenience.
    ![12](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/5cfbabd081c616cfb7aab72de55faf50887ceb96_2_690x421.gif)
  - Select the light type among:
    - **Directional** (For scenes featuring the sun)
    - **Spot** (For great artistic results)
    - **Area** (For even greater artistic results)
    - **Point** (For omnidirectional requirements)
  - Configure the properties of your light to get the desired artistic effects.
    ![13](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/e387061341fb700ef8b311b64107f255ea898547_2_690x422.gif)
  - If you wish to have shadows blended in your AR scene, use the free opacity asset below on your plane defined by the Ground Box-type primitive entity:
    - Radial Gradient Map:
      ![Free Asset](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/Shadow-Alpha.jpg)
    - Save the above pic and place this texture map in your data folder.
    - Click on the **Refresh the library** button, Drag & Drop the texture in your Ground plane’s **Opacity Channel** and check the **Translucent** flag.
      ![14](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/14.gif)

- Press **ALT+SPACE** to preview your app’s Final visual result & **CTRL+SPACE** to play it.
  ![15](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/16526e4a4810b735fc741e1eaaee90f43d2f20c9_2_690x422.gif)

## Step 5: Export your AR scene
- Click on the **Export** tab and select the file format you wish to export to:
- Use *Player* to generate a **VPK** file that can be played on iOS devices with our app **We3D**, but also on all Mac / Windows computers that have Valkyrie Engine software installed.
- Use *EXE* to generate a **Microsoft Windows Executable** file.
- Use *Project* to generate a **Project Archive** (.zip file) that can be opened & edited by other users.
- In this case we will use the *Player* option as we want to create an AR scene for iOS.
  ![16](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/16.gif)
- Clicking on the **Explore** button will open the location of the VPK file. By default in (C:/Users/Username/Documents/VlkApps/App_Name/Publish/Level/Player)
  ![17](https://cdn2.talansoft.com/ftp/img/docs/AR_Scene/17.png)

## Step 6: Share your AR scene with the world!

Your VPK file is now ready, there are multiple methods to send it to your iOS devices.

For Online Transfer:
- Upload the VPK file to your preferred online storage service, or send it to anyone by email or any messaging app.
- Download the VPK on your iOS device and select **Open in We3D**.

For Local WiFi Transfer:
- Make sure your computer is connected to internet.
- Open We3D on your iOS Device. Make sure your device is connected via Wi-Fi to internet (on the same local network as your computer).
- Click on the menu on the top-right corner. Your current IP address will be displayed.
- Enter this IP Address in your web browser and you will able to access We3D subfolders & upload directly the app to your iOS Device.

After downloading the VPK on your device, open We3D and let the magic happen!
![img](https://cdn2.talansoft.com/ftp/img/dragon_template/04_ar_gif.gif)
