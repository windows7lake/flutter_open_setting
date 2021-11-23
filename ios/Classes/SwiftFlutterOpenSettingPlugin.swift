import Flutter
import UIKit

public class SwiftFlutterOpenSettingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_open_setting", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterOpenSettingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
    
    if "openSetting" == call.method {
        guard let url = URL.init(string: UIApplication.openSettingsURLString) else {
            result(false)
            return;
        }
        if UIApplication.shared.canOpenURL(url){
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        } else {
            result(false)
        }
        result(true)
    } else {
        result("iOS " + UIDevice.current.systemVersion)
    }
    

  }
}

