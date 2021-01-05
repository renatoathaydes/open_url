import 'package:open_url/open_url.dart';

void main() async {
  final result = await openUrl('https://github.com/renatoathaydes/open_url');
  if (result.exitCode == 0) {
    print('URL should be open in your browser');
  } else {
    print('Something went wrong (exit code = ${result.exitCode}): '
        '${result.stderr}');
  }
}
