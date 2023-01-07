import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebpageView extends StatelessWidget {
  final String url;

  const WebpageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: Text(url),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}