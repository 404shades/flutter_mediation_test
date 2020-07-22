#import "MediationTestPlugin.h"
#if __has_include(<mediation_test/mediation_test-Swift.h>)
#import <mediation_test/mediation_test-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mediation_test-Swift.h"
#endif

@implementation MediationTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediationTestPlugin registerWithRegistrar:registrar];
}
@end
