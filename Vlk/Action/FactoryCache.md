# FactoryCache

Cache/deletes the specified entity and cache it in the specified
[Factory](./Entity/Factory) entity. The entity must have been created with
the [FactorySpawn](./Action/FactorySpawn) or
[FactorySpawnGrid](./Action/FactorySpawnGrid) action.

-   **target**: The target [Factory](./Entity/Factory) where the entity
    will be cached.
-   **entity**: The entity to cache/delete.

NOTE: Whether the entity is cached or in effect deleted is up the
[Factory](./Entity/Factory) entity
