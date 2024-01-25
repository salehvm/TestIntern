#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"salehmajidov.AzercellUIkit";

/// The "Black" asset catalog color resource.
static NSString * const ACColorNameBlack AC_SWIFT_PRIVATE = @"Black";

/// The "Main" asset catalog color resource.
static NSString * const ACColorNameMain AC_SWIFT_PRIVATE = @"Main";

/// The "SecondColor" asset catalog color resource.
static NSString * const ACColorNameSecondColor AC_SWIFT_PRIVATE = @"SecondColor";

#undef AC_SWIFT_PRIVATE