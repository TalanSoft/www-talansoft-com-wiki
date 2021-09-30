# PropertyChanged

Triggered when the specified property of the target entity is modified
and matches the specified condition.

Mostly used with the [DataTable](./Entity/DataTable) entity. But it can
also be used with any bound property.

#### MaxTriggerPerFrame

The default value is set to 1 to prevent a runaway affect that can impact your application's performance and potentially result in sluggish project performance. The *MaxTriggerPerFrame* caps the amount of triggers to prevent performance degradation or freezes. In most situations, triggering a single event per frame is adequate.

In more advanced use cases the maximum triggers per frame can be increased. Precautions should be taken when altering the maximum value. Best practices would be to save your work before changing the maximum value and then thoroughly testing before overwriting your existing level.

Exceeding the maximum triggers per frame will produce a warning message in the Console. "W/PropertyChanged: Can't trigger more than N time(s) per frame."

Note: Excessive triggers per frame can impact overall performance.

