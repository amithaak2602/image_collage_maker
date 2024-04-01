import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'image_collage_maker_platform_interface.dart';

/// An implementation of [ImageCollageMakerPlatform] that uses method channels.
class MethodChannelImageCollageMaker extends ImageCollageMakerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('image_collage_maker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
