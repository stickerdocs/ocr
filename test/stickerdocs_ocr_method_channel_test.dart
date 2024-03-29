import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stickerdocs_ocr/stickerdocs_ocr_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelStickerdocsOcr platform = MethodChannelStickerdocsOcr();
  const MethodChannel channel = MethodChannel('stickerdocs_ocr');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
