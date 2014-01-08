## 百度社会化分享 IOS 插件 for Apache Cordova


## 安装方法

```
cordova plugin add https://github.com/chc123456/cordova-baidushare-plugin.git
```

## 使用方法
### 分享图片
```
var message = {
 title: "title",
 description: "这是一个测试",
 url: "http://www.baidu.com",
 imageUrl: "http://images-fast.digu365.com/407685504fe441c6a36f04f518cc997a0004.jpg",
 imageNamed: "小清新",
};
window.socialmessage.send(message);
```
安装完成后记得重新Build一下。
关于插件需要的支持库，请参见百度社会化分享文档
```
http://developer.baidu.com/wiki/index.php?title=docs/social
```
在AppDelegate中初始化分享插件信息。
```
- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{   ......
    ......
    //定义分享平台数组
    NSArray *platforms = [NSArray arrayWithObjects:kBD_SOCIAL_SHARE_PLATFORM_SINAWEIBO,kBD_SOCIAL_SHARE_PLATFORM_QQWEIBO,kBD_SOCIAL_SHARE_PLATFORM_QQZONE,kBD_SOCIAL_SHARE_PLATFORM_KAIXIN,kBD_SOCIAL_SHARE_PLATFORM_RENREN,kBD_SOCIAL_SHARE_PLATFORM_WEIXIN_SESSION,kBD_SOCIAL_SHARE_PLATFORM_WEIXIN_TIMELINE,kBD_SOCIAL_SHARE_PLATFORM_QQFRIEND,
                          kBD_SOCIAL_SHARE_PLATFORM_EMAIL,
                          kBD_SOCIAL_SHARE_PLATFORM_SMS,nil];
    //初始化分享组件
    [BDSocialShareSDK registerApiKey:@"dHwDe5TTTtFEv4MOgoeTGLvX" andSupportPlatforms:platforms];
    
    //初始化微信
    [BDSocialShareSDK registerWXApp:@"wx712df8473f2a1dbe"];
    
    //设置新浪微博和QQ客户端的app id，使用SSO功能
    [BDSocialShareSDK registerSinaWeiboApp:@"319137445"];
    [BDSocialShareSDK registerQQApp:@"100358052"];
    .......
    .......
}
```
## License

[MIT License](http://ilee.mit-license.org)