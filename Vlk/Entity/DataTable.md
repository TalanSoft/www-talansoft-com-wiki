# DataTable

The DataTable is a key entity used in the creation of more advanced
games and applications. The DataTable stores the values of properties
that are added to the DataTable via actions. The DataTable entity isn't
extremly useful by itself but when paired up with various actions and
events it can become the workhorse of your application - triggering all
sorts of exciting things to take place: Score updates, level changing,
tracking enemy kills, saving and loading, ammo counts, armor, fuel, etc.

To take advantage of the DataTable you will need to become familar with
these addtional actions and events. They work with the DataTable and
allow properties to be added and changed and for events to be triggered.

-   [Action/EntitySetProperty](./Action/EntitySetProperty): Sets a value
    for the property by overwriting the previous value.
-   [Action/DataTableCopy](./Action/DataTableCopy): Copies data from one
    DataTable to another.
-   [Action/DataTableRead](./Action/DataTableRead): Used to load DataTable
    properties from external sources.
-   [Action/DataTableWrite](./Action/DataTableWrite): Used like a save
    feature. Can write the DataTable to the host PC being used.
-   [Event/PropertyChanged](./Event/PropertyChanged): Watches the
    DataTable and waites for a specified event to happen. This triggers
    the actions set as children to the PropertyChanged event.

The DataTable preserves the values of its properties as set in the
inspector. It restores them when playback stops.
