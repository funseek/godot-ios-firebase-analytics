# About
Firebase Analytics iOS Plugin for Godot

## Instructions
Clone this repository and it's submodules:
```
git clone --recurse-submodules git@github.com:funseek/godot-ios-firebase-analytics.git
```

To generate Godot headers you need to run compilation command inside godot submodule directory.   
Example:
```
./scripts/generate_headers.sh
```

pod install. you need to install [CocoaPods](https://cocoapods.org/)
```
pod install
```

Building a .a library
```
./scripts/release_static_library.sh 3.4
```

Copy a.library to Godot plugin directory
```
cp bin/release/firebase-analytics/firebase-analytics.*.a $GODOT_HOME/ios/plugins/firebase-analytics/bin/
cp firebase-analytics.gdip $GODOT_HOME/ios/plugins/
```

Export iOS project by Godot and you need to use CocoaPods in Xcode.
Add the following to your Podfile if it does not exist, create a new one.
```
pod 'Firebase/Analytics'
pod 'Firebase/Auth'
pod 'Firebase/Firestore'
```
Finaly, run pod install.

## License
MIT
