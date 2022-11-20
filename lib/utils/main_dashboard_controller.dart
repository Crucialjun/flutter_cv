import 'package:flutter_cv/utils/services.dart';

class MainDashBoardController {
  Future launchSpecifiedUrl(String url) async {
    try {
      Services().launchInputUrl(url);
    } catch (e) {
      print(e.toString());
    }
  }
}
