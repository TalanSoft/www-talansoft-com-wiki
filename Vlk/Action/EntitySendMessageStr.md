# EntitySendMessageStr

Sends a message to another entity. Usually used with
[Event/MessageReceivedA](./Event/MessageReceivedA) or
[Event/MessageReceivedStrEq](./Event/MessageReceivedStrEq). This version
of EntitySendMessage enables the usage of parameters.

-   **target** : is the name of the object which will receive the
    message
-   **MessageID** : to choose the ID to send message
-   **Broadcast** : to broadcast its message to all the children of the
    target object, which means all the children of the target will
    receive the message
-   **VarA** : Define the first parameter of the message.
-   **VarB** : Define the second parameter of the message.
