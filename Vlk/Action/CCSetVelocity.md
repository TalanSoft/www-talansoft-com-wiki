# CCSetVelocity

Sets the velocity of the target
[CollideCharacter](Entity/CollideCharacter) entity.

NOTE: This is probably not what you want, it will instantly change the
current velocity of the [CollideCharacter](Entity/CollideCharacter)
resulting in an visualy abrupt change of speed. To smoothly change the
velocity it is better to use the
[CCSetAcceleration](Action/CCSetAcceleration),
[CCSetDeceleration](Action/CCSetDeceleration) and
[CCSetMaxVelocity]([[Action/CCSetMaxVelocity) actions.
