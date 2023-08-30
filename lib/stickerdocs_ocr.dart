
import 'stickerdocs_ocr_platform_interface.dart';

class StickerdocsOcr {
  Future<String?> getPlatformVersion() {
    return StickerdocsOcrPlatform.instance.getPlatformVersion();
  }
}
