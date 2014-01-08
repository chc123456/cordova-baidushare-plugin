## Baidu Share Plugin for Apache Cordova

Cordova Plugin to baidu share . Developed for Apache Cordova CLI >= 3.0.0. Share text, images and urls to weibo, weichat and more.

## 1 step install

```
cordova plugin add https://github.com/chc123456/cordova-baidushare-plugin.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a socialmessage object to your root automatically when you build.

Ensure you use the plugin after your deviceready event has been fired.

### Share some text

Pass a message object with a "text" property as an argument to the send function:

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

## License

[MIT License](http://ilee.mit-license.org)