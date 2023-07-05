#include "include/ocr/ocr_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ocr_plugin.h"

void OcrPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ocr::OcrPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
