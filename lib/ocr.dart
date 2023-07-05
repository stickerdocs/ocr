
import 'ocr_platform_interface.dart';

class Ocr {
  Future<String?> getPlatformVersion() {
    return OcrPlatform.instance.getPlatformVersion();
  }
}
