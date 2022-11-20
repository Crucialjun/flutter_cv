import 'package:url_launcher/url_launcher.dart';

class Services {
  Future launchInputUrl(String url) async {
    Uri fullUrl = Uri.parse(url);
    if (await canLaunchUrl(fullUrl)) {
      await launchUrl(
        fullUrl,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
            headers: <String, String>{'my_header_key': 'my_header_value'}),
      );
    } else {
      throw "Could not launch $fullUrl";
    }
  }
}
