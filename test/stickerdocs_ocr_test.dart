import 'package:flutter_test/flutter_test.dart';
import 'package:stickerdocs_ocr/stickerdocs_ocr.dart';
import 'package:stickerdocs_ocr/stickerdocs_ocr_platform_interface.dart';
import 'package:stickerdocs_ocr/stickerdocs_ocr_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStickerdocsOcrPlatform
    with MockPlatformInterfaceMixin
    implements StickerdocsOcrPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StickerdocsOcrPlatform initialPlatform = StickerdocsOcrPlatform.instance;

  test('$MethodChannelStickerdocsOcr is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStickerdocsOcr>());
  });

  test('getPlatformVersion', () async {
    StickerdocsOcr stickerdocsOcrPlugin = StickerdocsOcr();
    MockStickerdocsOcrPlatform fakePlatform = MockStickerdocsOcrPlatform();
    StickerdocsOcrPlatform.instance = fakePlatform;

    expect(await stickerdocsOcrPlugin.getPlatformVersion(), '42');
  });
}
