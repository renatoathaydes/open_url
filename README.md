# open_url

Simple package to open URLs on the user's default application, using the platform's default utility:

* `start` on Windows.
* `xdg-open` on Linux.
* `open` on MacOS.

This is normally used to display a website on a browser.

This package can only be used when running on the Dart VM.

**On Flutter**, use the [url_launcher](https://pub.dev/packages/url_launcher) package instead.

**On the Web**, use [window.open()](https://api.dartlang.org/stable/dart-html/Window/open.html). 
