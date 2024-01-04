#include "include/flutterpop/flutterpop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutterpop_plugin.h"

void FlutterpopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutterpop::FlutterpopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
