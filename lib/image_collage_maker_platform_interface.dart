import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'image_collage_maker_method_channel.dart';

abstract class ImageCollageMakerPlatform extends PlatformInterface {
  /// Constructs a ImageCollageMakerPlatform.
  ImageCollageMakerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ImageCollageMakerPlatform _instance = MethodChannelImageCollageMaker();

  /// The default instance of [ImageCollageMakerPlatform] to use.
  ///
  /// Defaults to [MethodChannelImageCollageMaker].
  static ImageCollageMakerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImageCollageMakerPlatform] when
  /// they register themselves.
  static set instance(ImageCollageMakerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
