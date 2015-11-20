#import "GPUImageFramebuffer+QuickLook.h"
#import <UIKit/UIKit.h>

@implementation GPUImageFramebuffer (QuickLook)

- (id)debugQuickLookObject
{
    [self lock];
    CGImageRef contents = [self newCGImageFromFramebufferContents];
    UIImage *image = [UIImage imageWithCGImage:contents];
    CGImageRelease(contents);
    return image;
}

@end
