#ifndef FLUTTER_PLUGIN_IMAGE_COLLAGE_MAKER_PLUGIN_H_
#define FLUTTER_PLUGIN_IMAGE_COLLAGE_MAKER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace image_collage_maker {

class ImageCollageMakerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ImageCollageMakerPlugin();

  virtual ~ImageCollageMakerPlugin();

  // Disallow copy and assign.
  ImageCollageMakerPlugin(const ImageCollageMakerPlugin&) = delete;
  ImageCollageMakerPlugin& operator=(const ImageCollageMakerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace image_collage_maker

#endif  // FLUTTER_PLUGIN_IMAGE_COLLAGE_MAKER_PLUGIN_H_
