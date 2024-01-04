#ifndef FLUTTER_PLUGIN_FLUTTERPOP_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTERPOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutterpop {

class FlutterpopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterpopPlugin();

  virtual ~FlutterpopPlugin();

  // Disallow copy and assign.
  FlutterpopPlugin(const FlutterpopPlugin&) = delete;
  FlutterpopPlugin& operator=(const FlutterpopPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutterpop

#endif  // FLUTTER_PLUGIN_FLUTTERPOP_PLUGIN_H_
