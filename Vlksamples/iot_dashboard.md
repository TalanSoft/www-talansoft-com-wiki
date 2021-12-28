---
title: Simple IoT Dashboard | Valkyrie Template
meta-description: Create your own IoT dashboard using our ready-made template
---

# Simple IoT Dashboard

Monitor your IoT data and display video-surveillance feeds with this ready-to-use real-time 3D dashboard. Build the digital twin of your premises and you're ready to go!<br>

<a class="btn btn-primary umami--click--bt_launch_iot_dashboard" href="/vlk/samples/iot_dashboard/IoT_Dashboard_2.vpk">Launch IoT dashboard</a>

Click on the button above to try it in your browser now! The web version of the template will load and allow you to interact with the end product (please note that the CCTV live feed works only on desktop/mobile apps at the moment).<br>
This sample is a a practical example for the BIM/IoT industry of what you can build in Valkyrie with no code. Feel free to download it and adapt the dashboard to your own infrastructure.<br>

![Valkyrie IoT dashboard](https://cdn2.talansoft.com/ftp/img/iot_dashboard/iot-dashboard.jpg)

![IoT dashboard evacuation route](https://cdn2.talansoft.com/ftp/img/iot_dashboard/fire-exit.jpg)

# Downloads

- [Vpk Download](https://cdn2.talansoft.com/ftp/samples/IoT_Dashboard_2.vpk). This is the exported application that you can experience on your phone with [We3D](/vlk/downloads#we3d) or desktop with [Valkyrie](/vlk/downloads#vlk).
- [Vlk Project Download](https://cdn2.talansoft.com/ftp/samples/Hotel_01_VLK.zip). This is the source project that you can tinker with in the [Valkyrie editor](/vlk/downloads#vlk).

# Vpk guide

Quick guide to using the app on browser or desktop:  
- Press & Hold **Left Click** to **Rotate** the camera
- Use the **Mouse Wheel** to **Zoom In / Out**
- Press the **Middle mouse button** to **Move** the scene horizontally & vertically

When using **[We3D](/vlk/downloads#we3d)**:  
- Press & Hold **one finger** to **Rotate** the camera
- Use the **2 fingers pinch** action to **Zoom In / Out**

Here are the main features of the IoT dashboard template:
![IoT dashboard menu guide](https://cdn2.talansoft.com/ftp/img/iot_dashboard/iot-dashboard-menu-guide.jpg) 

1. Fire Alarm monitoring by floor Panel - Toggle ON/OFF
2. Evacuation route - Toggle ON/OFF
3. Fire Alarm monitoring by floor Panel
4. CCTV field of vision and feed display
5. Navigation by floor no. Panel
6. Move to upper/lower floor
7. Refresh the UI and recenter the camera on the building
8. Switch between Perspective camera mode and 2D Orthogonal camera mode (top-down view)
9. Navigation by floor no. Panel - Toggle ON/OFF

Screenshot of the CCTV feed:
![IoT dashboard top-down view](https://cdn2.talansoft.com/ftp/img/iot_dashboard/top-down-view-cctv.jpg)

# Editor guide
Here are a few hints if you want to edit the template to build your own application.
## Setting up an IPCAM texture file
- You can open one of your “IPCAM” file with a notepad and update the ipcam url accordingly
![IPCAM URL in notepad](https://cdn2.talansoft.com/ftp/img/iot_dashboard/IPCAM-change-notepad.png)
- The “IPCAM” file can be used as a texture by simply drag & dropping it into the **Diffuse channel** of your material
![IPCAM diffuse channel settings](https://cdn2.talansoft.com/ftp/img/iot_dashboard/IPCAM-diffuse-channel.png)

# Other Version
Check out another project based on this Configurator Project Template.
- [Watch Configurator](./watch_configurator)

# Links

You might also be interested in these templates:
- [AR education](./ar-education)
- [AR dragon](./ar-dragon)
