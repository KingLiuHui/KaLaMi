// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

#if canImport(UIKit)
  import UIKit
#endif

public final class KaLaMi {
    
    public static let shared = KaLaMi()
    public init(){
        
    }
    
    /// 1.Get the name of the App
    /// - Returns: App name. default value:NoAppName
    public func getAppName() -> String{
        let dict = Bundle.main.localizedInfoDictionary
        if let dict {
            return dict["CFBundleDisplayName"] as! String
        }
        let infoDict = Bundle.main.infoDictionary
        if let infoDict {
            return infoDict["CFBundleDisplayName"] as! String
        }
        return "NoAppName"
    }
    
    /// 2.Get App version
    /// - Returns: App version. default value:NoAppVersion
    public func getAppVersion() -> String{
        let dict = Bundle.main.infoDictionary
        if let dict {
            return dict["CFBundleShortVersionString"] as! String
        }
        return "NoAppVersion"
    }
    
    /// 3.Get the BundleID of the App
    /// - Returns: App bundleID. default value:NoBundleIdentifier
    public func getAppIdentifier() -> String{
        let dict = Bundle.main.infoDictionary
        if let dict {
            return dict["CFBundleIdentifier"] as! String
        }
        return "NoBundleIdentifier"
    }
    
    /// 4.Get the Bundle Version of the App
    /// - Returns:App BundleVersion. default value:NoCFBundleVersion
    public func getAppBundleVersion() -> String{
        let dict = Bundle.main.infoDictionary
        if let dict {
            return dict["CFBundleVersion"] as! String
        }
        return "NoCFBundleVersion"
    }
    
    /// 5.Get the platform the App is running on
    /// - Returns: Platform name
    public func getAppPlatform() -> String{
        #if os(macOS)
            return "macOS"
        #elseif os(iOS)
            if UIDevice.current.userInterfaceIdiom == .pad{
                return "iPadOS"
            }else{
                return "iOS"
            }
        #endif
    }
    
    /// 6.Get system version
    /// - Returns: System version number
    public func getSystemVersion() -> String{
        #if os(macOS)
            let result = ProcessInfo.processInfo.operatingSystemVersion
            let major  = result.majorVersion
            let minor  = result.minorVersion
            let patch  = result.patchVersion
            if(patch == 0){
                return String(major) + "." + String(minor)
            }else{
                return String(major) + "." + String(minor) + "." + String(patch)
            }
        #elseif os(iOS)
            return UIDevice.current.systemVersion
        #endif
    }
}

