import 'package:flutter_test/flutter_test.dart';
import 'package:ocr/ocr.dart';
import 'package:ocr/ocr_platform_interface.dart';
import 'package:ocr/ocr_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOcrPlatform
    with MockPlatformInterfaceMixin
    implements OcrPlatform {

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
