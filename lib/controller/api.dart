import 'dart:io' show Platform;

class ApiConstant {
  String api = 'api.php?';
  String slider = 'slider';
  String latest = 'latest';
  String category = 'category';

  String baseUrl() {
    String baseUrlWeb = 'http://127.0.0.1/ebookapp/';
    String baseUrlMobile = 'http://192.168.88.101/ebookapp/';
    bool kisweb = false;
    try {
      if (Platform.isAndroid) {
        return baseUrlMobile;
      } else if (Platform.isIOS) {
        return baseUrlMobile;
      }
    } catch (e) {
      kisweb = true;
      if (kisweb) {
        //* Runing on platform web
        return baseUrlWeb;
      }
    }
    return baseUrlWeb;
  }
}
