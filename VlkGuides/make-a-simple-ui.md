---
title: Create a simple user interface with Valkyrie
meta-description: tutorial to create a simple user interface with Valkyrie
---
# Create a simple user interface with Valkyrie

In this tutorial, you will learn how to position your UI elements on the screen.  
We recommend for you to be familiar with setting up interactions in Valkyrie.  

Depending on the look and feel you are seeking, you may want to design your GUI in the image editor of your choice.

What you will need:

- Valkyrie Engine
- (Optional) GUI images in PNG, TGA or JPG format
- 30 minutes

You can play with the final result in the *GUI template* included in the Valkyrie Engine launcher.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/426e650b3a9f6dca492a2c14a89dc0100d5e447b_2_471x375.jpeg)

Now without further ado, let’s get started!

### Target User Interface in Valkyrie

We will reproduce the GUI featured in the concept art below:
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/a5a203684516734474cf12e1627d78c14364c17e_2_690x388.jpeg)

Notice the 5 UI sections in the design:
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/1f0edfbb4c1f70d99300cf28a3f8ba1e40036105_2_690x388.jpeg)

Let’s first learn how to build the Bottom center bar element (UI Section 3), and then we will take a closer look at the Right side collapsible menu (UI Section 5).

### Setup UI Layer

Create a new application in Valkyrie Engine or use an existing one.

Copy your assets in the ./data folder of your application.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/d22410687cdd9140f484b35ae31a22aeb64887dc.png)

The image assets associated with each section must be imported in either JPG, TGA or PNG format.

Create a new layer by drag & dropping the Layer entity from the library to your scene.
![layer](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/339e2c02128c77e8efa1b5bbb320303b4a9b6e15_2_690x309.gif)

You can assign a name to this layer if you wish to. In this case, we will name it *GUI*.
![layer%20name%20input](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/928d810cb641769832d15fdf76006b0c4239679b_2_480x375.gif)

We need to enable the following flags:
- PainterDrawSet: This flag allows Valkyrie Engine to know which layer should be displayed first depending on its position in the scene’s hierarchy.
- Camera: This flag specifies that the layer contains its own camera. Otherwise the camera of the parent layer will be used.
- ViewportStrech: This flag enables the aspect ratio of the Viewport to be changed without affecting the position of the UI elements.
- ViewportCenterH: Center the viewport horizontally on the screen.
- ViewportCenterV: Center the viewport vertically on the screen.

![layout_flags](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/7b59caeea730738ef7a0ae3994ef4d6469895da7_2_641x500.gif)

Now that we’ve got that out of the way, let’s proceed to create a Camera of the GUI layer.
Drag & drop the camera entity from the library to your GUI layer. We will call this camera *GUI-Cam*.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/fba57ef017155a9c83221200d6956eb5dc1f2e80_2_690x371.gif)

All assets entering the field of view of this camera will be visible in the GUI layer.

### Bottom center bar element (UI Section 3)

Create a primitive by drag & dropping the Primitive entity into your GUI layer and position it within the field of view of your GUI-Cam.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/304dfba6e972549d820a21d1f6e6ef4e2579482a_2_690x371.gif)

The primitive you create is a box by default, let’s make it into a plane.
Select your primitive and navigate into its properties, in the Primitive type, select PlaneHz.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/52882d431eec06d22955baf3a272b4e1934bf0e8_2_690x371.gif)

Your level should look like this:
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/fdc5e04ad24e560be593c1b43bd84bd807a7d242_2_690x377.png)

To add more context, let’s add a texture to the primitive. Navigate to your asset library and select one of the bitmaps you saved in the ./data folder. You will have to drag & drop it into the primitive’s diffuse channel.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/c325d6a043c8bf9478b3a01caa540454702f77c0_2_690x371.gif)

Our UI element is now textured, but the texture appears distorted. That’s because the primitive’s aspect ratio doesn’t match the texture’s aspect ratio. To fix this, select your primitive and scale it accordingly to match your texture resolution.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/2f6b25da1cf3de1d733e70a6e607b274d26e8f46_2_690x371.gif)

Don’t forget to enable the transparency flag in the material editor if your bitmap features an alpha channel.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/5dea020378c0338d481fca46c139266cd5ec529c_2_690x371.gif)

The bottom UI element from section 3 is now displayed on the screen.
However, we must now anchor it correctly in the viewport.

To do so, we will use dummies.
Drag & drop a dummy entity from the library to your GUI layer. We will name it *UI-Bottom-Anchor*.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/a0a7eee2c18ef5e106ed4cff2b5baf72ac59872d_2_690x371.gif)

Drag your primitive into the dummy and make sure they have the same position on the Z axis.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/8d1c723d2d1e720f08ee9e9f845cfa36f9dc2878_2_690x371.gif)

Set your primitive relative to the dummy with its Base Flag. This means that the transformations applied to the dummy will also affect the assets contained within it.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/8e3f20b049a4478fad1b5f2c8265eac15cf8431f_2_690x371.gif)

We will now create the anchor. Navigate to the actions library and drag & drop the ViewportAnchor action on your dummy.
You can select the horizontal & vertical anchor settings by clicking on the ViewportAnchor action in your timeline.
In this case, we want the UI-Bottom-Anchor to be centered horizontally and anchored at the bottom of the screen:
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/a0c00b28cb3ef3ded64395d0fc8541eee0175192_2_690x371.gif)

Press ALT+SPACE to return to the camera view and press CTRL+SPACE to play the scene.
The UI element is now centered horizontally & anchored at the bottom of the screen vertically.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/4be8311b2326dcb5b7cc1059fa842639471509b8_2_690x371.gif)

You can tweak the primitive’s position if there is a gap between the asset and the screen’s limit.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/f303c85bd5be9efc4be0bef8fbe848eb4321bfca_2_690x371.gif)

Our UI element is now correctly anchored in the viewport.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/20163ba350d1819e883230a8da9f9dd4362621c1_2_690x377.png)

### Top Left UI element (UI Section 1)

We will repeat this process for all UI elements.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/bd809e8c63d68b3d75ab61d61e153d39f8989813_2_690x371.gif)

![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/fb497c1319c38d633dfc3fdafc48334c770bde45_2_690x371.gif)

UI Sections 2 and 4 are skipped in this tutorial as there is little added value to show it.

### Right side collapsible menu (UI Section 5)

One of the UI elements is partially hidden. So let’s see how to handle this kind of exception.

Duplicate one of your UI dummies and change the settings of the ViewportAnchor accordingly. In this case Horizontally right and vertically centered.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/45b8eb1702c0a7ca871eb5584e868c4a94829872_2_690x371.gif)

Assign the correct bitmap in your material editor and scale your primitive to match the texture’s aspect ratio.
![img](https://tsdata2.blob.core.windows.net/img/create_user_interface/21.gif)

As you may have noticed, the ViewportAnchor action is active on the dummy. The dummy’s position will be updated depending on the ViewportAnchor settings. That being said, the primitive relative to the dummy can be moved. Its anchor point is the dummy’s position.
This allows you to handle exceptions easily and we’ll demonstrate that in a moment.

Let’s pretend that when clicked, the inventory menu we just created should be revealed completely.
We will need to create 2 additional dummies to specify the start and end positions of our UI element.

Disable your primitive’s relative flag for the moment.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/0846f9e9cc83ca54a547ef5ae8cebe369e86e0d9_2_690x371.gif)

Create a new dummy and position it at the exact location of your primitive. Let’s name this dummy Start.
Tick the relative flag in the dummy’s settings.
Drag your primitive into the Start primitive and enable its relative flag.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/af8dba5ab757f5ca675bd16ab22d52afd0784c1c_2_690x371.gif)

Duplicate the Start dummy and drag it to the left before renaming it to End. This will be the destination of our UI element when it is revealed.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/58a7c9bdac8aefc120fa03db210d4077ab73f244_2_690x371.gif)

Now create 2 AnimMoveTo actions and drag them onto your primitive.
We will create 2 animations.
One when the UI element is revealed and another for when it collapses into its initial state.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/d7a1b2f8a2d5eed78ffcf3b3b6ba658ab36d2278_2_690x371.gif)

Press CTRL+SPACE to play your scene. You will now see the UI element expand and collapse as the timeline plays.

Naturally, we want to trigger this animation only when the user interacts with the UI element.
To do so, let’s add constraints to the timeline.

Drag & Drop 2 TimelineJumpTo actions on your primitive. Adjust their lengths so that they are active after the AnimMoveTo actions.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/e752859dcd0699567f80f5789755e4efe2cf9405_2_690x371.gif)

When the TimelineJumpTo action is triggered, you can move the current time to a specific time. It is useful to create state machines.

In this case, every time the action is triggered, we want to the move the current time to the beginning of the last AnimMoveTo animation.

In order to make this work, we need to select our primitive and tick the LocalTimeline flag as well as setting ticking the Loop checkbox and make sure that the Playback is set to Playing.
![img](https://tsdata2.blob.core.windows.net/img/create_user_interface/28.gif)

Play your scene and notice that the constraints are now in place! But there is still no way for the user to reveal the UI so we’ll have to create an interaction for that.

Navigate to the events library and drag & drop a Finger event in your GUI layer.

Navigate to the actions library and drag & drop an InputRayCast action onto the Finger event.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/fd824ecd4a9dfedfbb1f8233f3e85d6399c23b35_2_690x371.gif)

User clicks and finger taps are now detected in the scene.

Now let’s create 2 EnterRayHit events in our primitive.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/4a9a7fd2a6bfd25cdc04a25b5ea123df237359e4_2_690x371.gif)

As we didn’t create specific hitboxes for our UI element, its entire surface can receive clicks.
By using 2 EnterRayHit events we can specify what happens when the UI element is clicked regardless of its status.

Let’s add a TimelineJumpTo action to both EnterRayHit events and set the time accordingly.
![img](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/a9e25905d24768fd4f5a1d35c082dc9eb006b920_2_690x371.gif)

Behold, your UI is now complete! Clicking on the UI element reveals and collapses it. Notice also how the UI elements are anchored to the right side of the screen.
![img](https://tsdata2.blob.core.windows.net/img/create_user_interface/32.gif)

### Conclusion

With what you’ve learned, you can add more granularity to your own UI elements and create sophisticated user interfaces.
The interactions you create in your UI layer can affect elements in the 3D layers underneath, so go ahead and try.
