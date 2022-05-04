# About
Firebase Analytics iOS Plugin for Godot

## Instructions
### Building library and copy them to Godot Project
Clone this repository and it's submodules:
```
git clone --recurse-submodules git@github.com:funseek/godot-ios-firebase-analytics.git
```

To generate Godot headers you need to run compilation command inside godot submodule directory.   
Example:
```
./scripts/generate_headers.sh
```

run pod install. [CocoaPods](https://cocoapods.org/)
```
pod install
```

Building a .a library
```
./scripts/release_static_library.sh 3.4
```

Copy a.library and gdip file to Godot plugin directory
```
cp bin/release/firebase-analytics/firebase-analytics.*.a $GODOT_HOME/ios/plugins/firebase-analytics/bin/
cp firebase-analytics.gdip $GODOT_HOME/ios/plugins/
```

### Export iOS project and edit Xcode project
Export iOS project by Godot. then you need to use CocoaPods in Xcode. Add the following to your Podfile if it does not exist, create a new one.
```
pod 'Firebase/Analytics'
```

run pod install.
```
pod install
```

Finaly, Your GoogleService-Info.plist to Xcode. 
<img width="821" alt="Screen Shot 2022-05-03 at 8 46 16" src="https://user-images.githubusercontent.com/545241/166343525-1ab9bb41-863e-47f3-a239-81319cda224a.png">


## License
MIT
