import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stickerdocs_ocr/ocr.dart';
import 'package:stickerdocs_ocr/ocr_platform_interface.dart';
import 'package:stickerdocs_ocr/ocr_method_channel.dart';

class MockOcrPlatform with MockPlatformInterfaceMixin implements OcrPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OcrPlatform initialPlatform = OcrPlatform.instance;

  test('$MethodChannelOcr is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOcr>());
  });

  test('getPlatformVersion', () async {
    Ocr ocrPlugin = Ocr();
    MockOcrPlatform fakePlatform = MockOcrPlatform();
    OcrPlatform.instance = fakePlatform;

    expect(await ocrPlugin.getPlatformVersion(), '42');
  });
}
