import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'stickerdocs_ocr_platform_interface.dart';

/// An implementation of [StickerdocsOcrPlatform] that uses method channels.
class MethodChannelStickerdocsOcr extends StickerdocsOcrPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('stickerdocs_ocr');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
