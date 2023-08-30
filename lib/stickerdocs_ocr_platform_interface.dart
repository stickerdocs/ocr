import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'stickerdocs_ocr_method_channel.dart';

abstract class StickerdocsOcrPlatform extends PlatformInterface {
  /// Constructs a StickerdocsOcrPlatform.
  StickerdocsOcrPlatform() : super(token: _token);

  static final Object _token = Object();

  static StickerdocsOcrPlatform _instance = MethodChannelStickerdocsOcr();

  /// The default instance of [StickerdocsOcrPlatform] to use.
  ///
  /// Defaults to [MethodChannelStickerdocsOcr].
  static StickerdocsOcrPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StickerdocsOcrPlatform] when
  /// they register themselves.
  static set instance(StickerdocsOcrPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
