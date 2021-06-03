# FactorySpawnGrid

Creates a number of entity in the specified [Factory](Entity/Factory)
entity. The new entities are placed on a grid pattern.

-   **target**: The target [Factory](Entity/Factory) entity where the
    new entities will be stored.
-   **template**: The source entity that will be cloned to create the
    newly spawned entity.
-   **emitter**: The entity whose's transform will be the base of the
    grid where the newly spawned entities are placed.
-   **count**: The number of entites spawned along each axis.
-   **cell\_size**: The size of an element of the grid in which the
    entities are placed. If zero the template entity's bounding volume
    size is used.
