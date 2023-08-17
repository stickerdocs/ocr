import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:stickerdocs_ocr/ocr_method_channel.dart';

abstract class OcrPlatform extends PlatformInterface {
  /// Constructs a OcrPlatform.
  OcrPlatform() : super(token: _token);

  static final Object _token = Object();

  static OcrPlatform _instance = MethodChannelOcr();

  /// The default instance of [OcrPlatform] to use.
  ///
  /// Defaults to [MethodChannelOcr].
  static OcrPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OcrPlatform] when
  /// they register themselves.
  static set instance(OcrPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
