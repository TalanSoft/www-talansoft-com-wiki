# DebugTrace

Prints a debug message in the active console. That is the Console form
in the editor or the console/log output of target player (the Javascript
console in the web browser, logcat on Android, and so on).

-   **on\_start**: Whether the debug trace should be printed when the
    action starts.
-   **on\_end**: Whether the debug trace should be printed when the
    action ends.
-   **on\_update**: Whether the debug trace should be printed when the
    action is updated.
-   **text**: A specific text to print, if not specified prints the
    entity & and timeline that triggered the DebugTrace action.
