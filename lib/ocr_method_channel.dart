import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:stickerdocs_ocr/ocr_platform_interface.dart';

/// An implementation of [OcrPlatform] that uses method channels.
class MethodChannelOcr extends OcrPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ocr');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
