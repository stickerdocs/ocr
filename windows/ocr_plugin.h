#ifndef FLUTTER_PLUGIN_OCR_PLUGIN_H_
#define FLUTTER_PLUGIN_OCR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ocr {

class OcrPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OcrPlugin();

  virtual ~OcrPlugin();

  // Disallow copy and assign.
  OcrPlugin(const OcrPlugin&) = delete;
  OcrPlugin& operator=(const OcrPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ocr

#endif  // FLUTTER_PLUGIN_OCR_PLUGIN_H_
