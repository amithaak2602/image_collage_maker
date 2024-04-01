#include "include/image_collage_maker/image_collage_maker_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "image_collage_maker_plugin.h"

void ImageCollageMakerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  image_collage_maker::ImageCollageMakerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
