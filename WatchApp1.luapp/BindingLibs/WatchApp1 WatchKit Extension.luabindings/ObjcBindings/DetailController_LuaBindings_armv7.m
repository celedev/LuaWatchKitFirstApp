// Lua to C bindings for /Volumes/Brume/Celedev CodeFlow/CodeFlow Sample Applications/WatchApp1/WatchApp1 WatchKit Extension/DetailController.h
// Generated by Celedev® LuaBindingsGenerator on 2015-09-16 12:39:20 +0000
// Target Architecture: armv7

#import "CIMLua/CIMLuaBindings.h"

#import "DetailController.h"

// Register Objective C methods extended signatures

@implementation DetailController (LuaModule_WatchApp1WatchKitExtension_DetailController)

+ (void) load
{

    CIMLuaObjcMethodAttributes instanceMethodsAttributes [] = {
        { @selector(nameLabel), "z@\"WKInterfaceLabel\"8@0:4" },
        { @selector(setNameLabel:), "v12@0:4z@\"WKInterfaceLabel\"8" },
        { @selector(image), "z@\"WKInterfaceImage\"8@0:4" },
        { @selector(setImage:), "v12@0:4z@\"WKInterfaceImage\"8" },
        { @selector(descriptionLabel), "z@\"WKInterfaceLabel\"8@0:4" },
        { @selector(setDescriptionLabel:), "v12@0:4z@\"WKInterfaceLabel\"8" }
    };
    [CIMLuaContext registerObjcInstanceMethodsAttributes:instanceMethodsAttributes withCount:6 forClass:[DetailController class]];
}

@end

