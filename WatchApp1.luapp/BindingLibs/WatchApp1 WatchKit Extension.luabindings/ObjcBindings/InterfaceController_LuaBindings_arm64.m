// Lua to C bindings for /Volumes/Brume/Celedev CodeFlow/CodeFlow Sample Applications/WatchApp1/WatchApp1 WatchKit Extension/InterfaceController.h
// Generated by Celedev® LuaBindingsGenerator on 2015-09-16 12:39:20 +0000
// Target Architecture: arm64

#import "CIMLua/CIMLuaBindings.h"

#import "InterfaceController.h"

// Register Objective C methods extended signatures

@implementation InterfaceController (LuaModule_WatchApp1WatchKitExtension_InterfaceController)

+ (void) load
{

    CIMLuaObjcMethodAttributes instanceMethodsAttributes [] = {
        { @selector(label), "z@\"WKInterfaceLabel\"16@0:8" },
        { @selector(setLabel:), "v24@0:8z@\"WKInterfaceLabel\"16" },
        { @selector(nextButton), "z@\"WKInterfaceButton\"16@0:8" },
        { @selector(setNextButton:), "v24@0:8z@\"WKInterfaceButton\"16" },
        { @selector(previousButton), "z@\"WKInterfaceButton\"16@0:8" },
        { @selector(setPreviousButton:), "v24@0:8z@\"WKInterfaceButton\"16" },
        { @selector(imageGroup), "z@\"WKInterfaceGroup\"16@0:8" },
        { @selector(setImageGroup:), "v24@0:8z@\"WKInterfaceGroup\"16" }
    };
    [CIMLuaContext registerObjcInstanceMethodsAttributes:instanceMethodsAttributes withCount:8 forClass:[InterfaceController class]];
}

@end

