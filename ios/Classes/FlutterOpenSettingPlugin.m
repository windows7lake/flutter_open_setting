#import "FlutterOpenSettingPlugin.h"
#if __has_include(<flutter_open_setting/flutter_open_setting-Swift.h>)
#import <flutter_open_setting/flutter_open_setting-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_open_setting-Swift.h"
#endif

@implementation FlutterOpenSettingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterOpenSettingPlugin registerWithRegistrar:registrar];
}
@end
