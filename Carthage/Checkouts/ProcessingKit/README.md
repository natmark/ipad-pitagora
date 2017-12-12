![Header](https://github.com/natmark/ProcessingKit/blob/master/Resources/ProcessingKit-Header.png?raw=true)

<p align="center">
    <a href="https://travis-ci.org/natmark/ProcessingKit">
        <img src="https://travis-ci.org/natmark/ProcessingKit.svg?branch=master"
             alt="Build Status">
    </a>
    <a href="https://cocoapods.org/pods/ProcessingKit">
        <img src="https://img.shields.io/cocoapods/v/ProcessingKit.svg?style=flat"
             alt="Pods Version">
    </a>
    <a href="https://github.com/natmark/ProcessingKit/">
        <img src="https://img.shields.io/cocoapods/p/ProcessingKit.svg?style=flat"
             alt="Platforms">
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat"
             alt="Carthage Compatible">
    </a>
</p>

----------------

# ProcessingKit
ProcessingKit is a Visual Programming library for iOS.  
ProcessingKit written in Swift🐧 and you can write like [processing](https://github.com/processing/processing).

## Demo
![Demo](https://github.com/natmark/ProcessingKit/blob/master/Resources/demo.gif?raw=true)

## Requirements
- Xcode8.3
- Swift3.x

Future release version 1.0.0 will supports Swift4 

## Usage
1. Create custom class that inherits from ProcessingView

```Swift
import ProcessingKit

class SampleView: ProcessingView {
    func setup() {
        // The setup() function is run once, when the program starts.
    }
    func draw() {
        // Called directly after setup(), the draw() function continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called.
    }
}
```

2. Create a SampleView instance
### Create programmatically
```Swift
    lazy var sampleView: SampleView = {
        let sampleView = SampleView(frame: frame)
        sampleView.isUserInteractionEnabled = true // If you want to use touch events (default true)
        return sampleView
    }()
```

### Use StoryBoard

Connect the UIImageView to SampleView Class 

```Swift
 @IBOutlet weak var sampleView: SampleView!
 
 override func viewDidLoad() {
     super.viewDidLoad()     
     sampleView.isUserInteractionEnabled = true // If you want to use touch events (default true)
 } 
```

## Instration

### [CocoaPods](http://cocoadocs.org/docsets/ProcessingKit/)
Add the following to your `Podfile`:
```
  pod "ProcessingKit"
```

- (Example project here: [PKPodsExample](https://github.com/natmark/PKPodsExample))

### [Carthage](https://github.com/Carthage/Carthage)
Add the following to your `Cartfile`:
```
  github "natmark/ProcessingKit"
```

- (Example project here: [PKExample](https://github.com/natmark/PKExample))

## License
ProcessingKit is available under the MIT license. See the LICENSE file for more info.
