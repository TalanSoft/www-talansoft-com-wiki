# EntityUpdateProperty

Used in conjunction with [Entity/DataTable](Entity/DataTable) and bound
properties. **EntityUpdateProperty** allows to set a value for a
property in the data table. Using **EntityUpdateProperty** will
overwrite the previous property value.

It behaves the same as **EntitySetProperty** excepted for the fact that
the expression is evaluated every time the action is updated.

-   **target**: The entity where to set the property.
-   **property**: The name of the property in the targeted DataTable
    that you want to change the value of.
-   **type**: The type of value that will be sent to the DataTable
    property.
-   **expr** : Specifies the expression used to get the value to set
    when the action is updated. The value is set to the return value of
    the expression.

Note: See **EntitySetProperty**'s documentation for a more detailed
description of the **expr**'s property syntax.
