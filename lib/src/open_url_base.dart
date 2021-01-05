import 'dart:io';

/// Open the given URL in the user's default application for the URL's scheme.
///
/// http and https URLs, for example, will be opened in the default browser.
///
/// The default utility to open URLs for the platform is used.
/// A process is spawned to run that utility, with the [ProcessResult]
/// being returned.
Future<ProcessResult> openUrl(String url) {
  return Process.run(_command, [url], runInShell: true);
}

String get _command {
  if (Platform.isWindows) {
    return 'start';
  } else if (Platform.isLinux) {
    return 'xdg-open';
  } else if (Platform.isMacOS) {
    return 'open';
  } else {
    throw UnsupportedError('Operating system not supported by the open_url '
        'package: ${Platform.operatingSystem}');
  }
}
