#include "include/stickerdocs_ocr/stickerdocs_ocr_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "stickerdocs_ocr_plugin.h"

void StickerdocsOcrPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  stickerdocs_ocr::StickerdocsOcrPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
