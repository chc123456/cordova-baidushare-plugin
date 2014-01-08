//
//  BaiduSharePlugin.m
//  BaiduShare
//
//  Created by CHC on 14-1-7.
//
//

#import "BaiduSharePlugin.h"
#import <BaiduSocialShare/BDSocialShareSDK.h>

@implementation BaiduSharePlugin
- (void) send:(CDVInvokedUrlCommand*)command;
{
    NSMutableDictionary *args = [command.arguments objectAtIndex:0];
    NSString *title = [args objectForKey:@"title"];
    NSString *description = [args objectForKey:@"description"];
    NSString *url = [args objectForKey:@"url"];
    NSString *imageUrl = [args objectForKey:@"imageUrl"];
    NSString *imageNamed = [args objectForKey:@"imageNamed"];
    SHARE_MENU_STYLE style = BD_SOCIAL_SHARE_MENU_BLACK_STYLE;
    BDSocialEventHandler result = ^(BD_SOCIAL_RESULT requestResult, NSString *shareType, id response, NSError *error)
    {
        if (requestResult == BD_SOCIAL_SUCCESS) {
           
        } else if (requestResult == BD_SOCIAL_CANCEL){
        } else if (requestResult == BD_SOCIAL_FAIL){
        }
    };
    
    //构建分享内容对象
    BDSocialShareContent *content = [BDSocialShareContent
                                     shareContentWithDescription:description url:url                                     title:title];
    //图片分享参数设定
    [content addImageWithImageSource:[UIImage imageNamed:imageNamed] imageUrl:imageUrl];
    //打开分享对话框
    [BDSocialShareSDK showShareMenuWithShareContent:content menuStyle:style supportedInterfaceOrientations:UIInterfaceOrientationMaskAllButUpsideDown result:result];
}


@end
