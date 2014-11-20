# LuaWatchKitFirstApp

LuaWatchKitFirstApp is a very simple Watch app, using WatchKit and live-coded in Lua with CodeFlow. It has two buttons, *Next* and *Previous* with which you can navigate through an array of images.

LuaWatchKitFirstApp shows, on the Objective-C side, how to use a Lua Context for live-coding an iOS or OS X app extension. On the Lua side, all code and image resources can be dynamically changed and the changes are immediately visible on the Watch screen.

## Configuration required

A Mac with Celedev CodeFlow version 0.9.8-b or later.

Works on the iOS simulator running iOS 8.2 or later (included in Xcode 6.2 beta).

## How to use this code sample

1. Open the CodeFlow project for this sample application.  
  This will automatically update the associated Xcode project, so that paths and other build settings are correctly set for your environment.

2. Open the associated Xcode project. You can do this in CodeFlow with the menu command `Program -> Open Xcode Project`.

3. Run the application on a device or in the simulator.

4. In CodeFlow, select the application in the `Target` popup menu in the project window toolbar. The app stops on a breakpoint at the first line of the Lua program.

5. Click on the `Continue` button in the toolbar (or use the CodeFlow debugger for stepping in the program) 

6. Enjoy the power of live coding with CodeFlow

## Troubleshooting

- **Some libraries / header files in the sample app Xcode project are missing**

  **⇒ Fix**: open the corresponding CodeFlow project, and CodeFlow will update the associated Xcode project, so that paths and libraries are correctly set.

- **Link errors (missing symbols) occur when I compile the Xcode project**

  **Most probable cause**: if you are using an Xcode version older than 6.2, these errors occur because the sample app is configured for the iOS 8.2 SDK.

  **⇒ Fix**: Open the Xcode project with Xcode 6.2.

## License

This application is provided under the MIT License (MIT)

Copyright (c) 2014 Celedev.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
