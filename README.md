# KaLaMi
KaLaMi is a lightweight framework that supports obtaining App-related information.
#  Features
- [X] Get the name of the App.
- [X] Get App version.
- [X] Get the platform the App is running on.
- [X] Get the BundleID of the App.
- [X] Get system version.
- [X] Get the Bundle Version of the App.
#  Requirements
| KaLaMi Version | Minimum iOS Target | Minimum macOS Target |                                                    
| :------------------: | :----------------: | :------------------: |  
|         1.0          |       iOS 12.0        |     macOS 10.13      |  
#  Installation with Swift Package Manager
To add KaLaMi to your Xcode project, select File -> Swift Packages -> Add Package Depedency.  

Then enter https://github.com/AudioKit/AudioKit for the URL.  

You can define which version range you want, or which branch to use.  
```swift
dependencies: [
    .package(url: "https://github.com/AFNetworking/AFNetworking.git")
]
```
#  Usage
Get the name of the App:
```
 KaLaMi.shared.getAppName()
```
Get App version:
```
 KaLaMi.shared.getAppVersion()
```
Get the platform the App is running on:
```
 KaLaMi.shared.getAppPlatform()
```
Get the BundleID of the App:
```
 KaLaMi.shared.getAppIdentifier()
```
Get system version:
```
 KaLaMi.shared.getSystemVersion()
```
Get the Bundle Version of the App:
```
 KaLaMi.shared.getAppBundleVersion()
```
#  Reporting issues
1.If you struggle with something feel free to [open an issue](https://github.com/onl1ner/TabBar/issues/new). Pull requests are also appreciated.

2.Please feel free to contact me via email ： liuhuijiaozhu@gmail.com.
