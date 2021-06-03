# EntityAnimLocalTransformDecomposed

Displace the entity to follow a set of key-framed decompose transforms.

A transform includes a translation, rotation and scaling factor. A
decomposed transform interpolates each translation, rotation and scaling
element separately and recompose them into a transform afterward, this
can lead to better interpolation in some cases at the cost of some
performance.

To manually add a key frame: add the action to the target entity, then
move the entity to the desired location for the key frame, then right
click on the action's time block and select the *Insert Key* menu item.
