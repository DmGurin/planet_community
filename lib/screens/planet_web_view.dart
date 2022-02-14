import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlanetWebView extends StatelessWidget {
  const PlanetWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://solarsystem.nasa.gov/resources/2372/mars-3d-model/',
    );
    // return Scaffold(
    //   body: Html(
    //       data:
    //           '<iframe src=\'https://solarsystem.nasa.gov/gltf_embed/2372\' width=\'100%\' height=\'450px\' frameborder=\'0\' />'),
    // );
  }
}
