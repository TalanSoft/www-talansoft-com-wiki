Triggered when the distance between the first two fingers that touch the screen changes.

During a pinch gesture, the device's OS reports changes to the distance between two fingers touching the screen. Pinch gestures are continuous, so your action method is called each time the distance between the fingers changes.

The distance between the fingers is reported as a scale factor.
At the beginning of the gesture, the scale factor is 1.0. As the distance between the two fingers increases, the scale factor increases proportionally. Similarly, the scale factor decreases as the distance between the fingers decreases.

Pinch gestures are used most commonly to change the size of objects or content onscreen. For example, map views use pinch gestures to change the zoom level of the map.

[Important Notice!]
The pinch event doesn't have the same behavior as the Mouse Wheel event.
The scale factor is a relative value:

<img src="https://latex.codecogs.com/svg.image?ScaleFactor=&space;\frac{LastValue}{CurrentValue}" title="ScaleFactor= \frac{LastValue}{CurrentValue}" />

To make your life easier, drag & drop the pinch interactions template into your project.