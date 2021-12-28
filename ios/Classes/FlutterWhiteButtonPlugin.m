#import "FlutterWhiteButtonPlugin.h"
#if __has_include(<flutter_white_button/flutter_white_button-Swift.h>)
#import <flutter_white_button/flutter_white_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_white_button-Swift.h"
#endif

@implementation FlutterWhiteButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterWhiteButtonPlugin registerWithRegistrar:registrar];
}
@end
