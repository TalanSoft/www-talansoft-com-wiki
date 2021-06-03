# MaterialUVExpression

Sets a UV transform on the specified material of the target entity.

-   **material**: Name of the material to target in the targeted entity.
-   **translate\_x**: The X translation expression.
-   **translate\_y**: The Y translation expression.
-   **scale\_x**: The X scaling expression.
-   **scale\_y**: The Y scaling expression.
-   **rotation**: The rotation expression.
-   **expr**: The full expression. When specified the
    **translate\_x/y**, **scale\_x/y** and **rotation** properties are
    ignored.

NOTE: The expressions use the same syntax as the
[EntitySetProperty](./Action/EntitySetProperty) action. As such they can
be animated by using the time variable. For example to do a simple
sliding animation you could set the **translate\_x** property to
`0.25*time`.
