# How to use an AR Marker
We often want to position an **augmented reality** scene on a specific location identified by a physical marker like a **QR code**. This allows you to control exactly how your users will experience your scene. You could print a marker on **business cards, pamphlets, magazines...** and have your scene anchor on it. We propose to show you how in this tutorial.  

## Basic display mode
First of all in AR, you are probably used to scanning your environment for an anchor as shown in this video. This is the basic display mode for most augmented reality scenes:  
![AR Anchor](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/AR_anchor_Bag.MP4)  

## Standard Valkyrie setup
Now, if you want to avoid scanning the environment and want your scene to be displayed at a specific location, you should know that all VPK files created with Valkyrie and played on our mobile platform [We3D](https://www.talansoft.com/vlk/downloads#we3d) will respond to the standardized **Valkyrie QR code** below:  
![AR Marker](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/we3d-ar-marker-qr-code.png)  

Print that QR code or display it on a screen, and your augmented reality scene will anchor on it right away as shown in this video:  
![AR Marker Anchor](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/ar_marker_anchor_bag.MP4)  

## Set up your own AR marker in Valkyrie
Finally let's now see how to include your own **AR marker** in your project so that your scene can anchor on it.  

For the sake of the example we will show you how to add the *we3d-ar-marker-qr-code.png* image shown to you in the previous section to a VLK project. Of course, when you do it, just use your own marker.  

First, copy your marker image in your VLK project directory:  
![Windows explorer](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/windows-explorer.png)  

Then inside your project, select the **level** and go to the **Publish section** to find the field **armarker_image**:  
![Level selection](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/level-selection.png)  

Finally just drag & drop the AR marker onto the field:  
![Slide AR marker](https://cdn2.talansoft.com/ftp/img/tutorial_ar-marker/slide-ar-marker.png)  

That is all you need to know.  
Now if you export your project on mobile, your scene will lock on this AR marker you just added.  

## How to create your AR marker
You can use any design tool your want to create an image. The idea however is that your image contains enough contrasted elements to make it easy for mobile devices to scan it, which is why we chose a rich black & white QR code for ours.  

If you play with this feature, you will also notice that your AR scene will scale according to the size of your AR marker. Just take note that the smaller the marker, the harder it will be for your device to scan, and your scene might not be as stable as with a bigger marker.  

With these last remarks, do your own tests and enjoy!  