//
//  BaiduSharePlugin.m
//  BaiduShare
//
//  Created by CHC on 14-1-7.
//
//

#import "BaiduSharePlugin.h" 

@implementation BaiduSharePlugin
- (void) send:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    NSString *title = [args objectForKey:@"title"];
    NSString *description = [args objectForKey:@"description"];
    NSString *url = [args objectForKey:@"url"];
    NSString *imageUrl = [args objectForKey:@"imageUrl"];
    NSString *imageNamed = [args objectForKey:@"imageNamed"];
    FrontiaShare *share = [Frontia getShare];
    
    [share registerQQAppId:@"100358052" enableSSO:NO];
    [share registerWeixinAppId:@"wx712df8473f2a1dbe"];
    
    //授权取消回调函数
    FrontiaShareCancelCallback onCancel = ^(){
        NSLog(@"OnCancel: share is cancelled");
    };
    
    //授权失败回调函数
    FrontiaShareFailureCallback onFailure = ^(int errorCode, NSString *errorMessage){
        NSLog(@"OnFailure: %d  %@", errorCode, errorMessage);
    };
    
    //授权成功回调函数
    FrontiaMultiShareResultCallback onResult = ^(NSDictionary *respones){
        NSLog(@"OnResult: %@", [respones description]);
    };
    
    FrontiaShareContent *content=[[FrontiaShareContent alloc] init];
    content.url = url;
    content.title = title;
    content.description = description;
    content.imageObj = imageUrl;
    
    NSArray *platforms = @[FRONTIA_SOCIAL_SHARE_PLATFORM_SINAWEIBO,FRONTIA_SOCIAL_SHARE_PLATFORM_QQWEIBO,FRONTIA_SOCIAL_SHARE_PLATFORM_QQ,FRONTIA_SOCIAL_SHARE_PLATFORM_RENREN,FRONTIA_SOCIAL_SHARE_PLATFORM_KAIXIN,FRONTIA_SOCIAL_SHARE_PLATFORM_EMAIL,FRONTIA_SOCIAL_SHARE_PLATFORM_SMS];
    
    [share showShareMenuWithShareContent:content displayPlatforms:platforms supportedInterfaceOrientations:UIInterfaceOrientationMaskPortrait isStatusBarHidden:NO targetViewForPad:sender cancelListener:onCancel failureListener:onFailure resultListener:onResult];

}


@end
