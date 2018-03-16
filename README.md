# swift-code-types-navigator
**An experimental project that shows the types defined in a Swift code as expandable bubbles on a canvas.**

### What it looks like (it's smooth in real-life):
![Alt Text](https://github.com/yoshimkd/swift-code-types-navigator/blob/master/swift-code-types-navigator-demo.gif)
This is the result for the code of **[Canvas File Explorer for Mac](https://github.com/yoshimkd/canvas-file-explorer-mac)**.

### How to use it:
Just run these two commands in Terminal from this project's root directory:  
`swift build`  
`.build/debug/SwiftDiagramGenerator . <swiftFileOrFolderPath1> <swiftFileOrFolderPath2> ...`

### A tutorial post:
https://martinmitrevski.com/2018/03/16/swift-code-types-navigator

### If you wish to work with the source code and hopefully contribute, here are some useful Swift Package Manager commands:
`swift package clean`  
`swift build` creates a SwiftDiagramGenerator executable in .build/debug  
`swift build -c release` creates a SwiftDiagramGenerator executable in .build/release  
`swift package update`  
`swift test`  
`swift package generate-xcodeproj`

### Initial contributors:
https://github.com/yoshimkd  
https://github.com/ZdravkoN  
https://github.com/martinmitrevski

### Usage of other software:
**swift-code-types-navigator** depends on two open source projects:  
[Vis.js](http://visjs.org) distributed under [The MIT License](http://opensource.org/licenses/MIT) and  
[Swift Abstract Syntax Tree](https://github.com/yanagiba/swift-ast) distributed under the [Apache License 2.0](https://github.com/yanagiba/swift-ast/blob/master/LICENSE).

We're very grateful to have the ability to use these two amazing tools in the building of **swift-code-types-navigator**.
