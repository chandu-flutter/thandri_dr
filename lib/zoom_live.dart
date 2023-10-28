import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ZoomLive extends StatelessWidget {
  final String zoomlive =
      'https://us06web.zoom.us/j/9666709040?pwd=3d2R3rIvtUlCUZWJbItSmiLyJdO1Y4.1#success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(zoomlive)),
        ),
      ),
    );
  }
}
