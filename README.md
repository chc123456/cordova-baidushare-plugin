## Baidu Share Plugin for Apache Cordova

Cordova Plugin to utilise native share features. Developed for Apache Cordova CLI >= 3.0.0. Share text, images and urls to Facebook, Twitter and more.

## 1 step install

```
cordova plugin add https://github.com/leecrossley/cordova-plugin-social-message.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a socialmessage object to your root automatically when you build.

Ensure you use the plugin after your deviceready event has been fired.

### Share some text

Pass a message object with a "text" property as an argument to the send function:

```
var message = {
    text: "This is a test message"
};
window.socialmessage.send(message);
```

## License

[MIT License](http://ilee.mit-license.org)