#ifndef FLUTTER_PLUGIN_STICKERDOCS_OCR_PLUGIN_H_
#define FLUTTER_PLUGIN_STICKERDOCS_OCR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace stickerdocs_ocr {

class StickerdocsOcrPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  StickerdocsOcrPlugin();

  virtual ~StickerdocsOcrPlugin();

  // Disallow copy and assign.
  StickerdocsOcrPlugin(const StickerdocsOcrPlugin&) = delete;
  StickerdocsOcrPlugin& operator=(const StickerdocsOcrPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace stickerdocs_ocr

#endif  // FLUTTER_PLUGIN_STICKERDOCS_OCR_PLUGIN_H_
