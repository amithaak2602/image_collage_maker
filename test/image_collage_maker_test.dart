// import 'package:flutter_test/flutter_test.dart';
// import 'package:image_collage_maker/image_collage_maker.dart';
// import 'package:image_collage_maker/image_collage_maker_platform_interface.dart';
// import 'package:image_collage_maker/image_collage_maker_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockImageCollageMakerPlatform
//     with MockPlatformInterfaceMixin
//     implements ImageCollageMakerPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final ImageCollageMakerPlatform initialPlatform = ImageCollageMakerPlatform.instance;
//
//   test('$MethodChannelImageCollageMaker is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelImageCollageMaker>());
//   });
//
//   test('getPlatformVersion', () async {
//     ImageCollageMaker imageCollageMakerPlugin = ImageCollageMaker();
//     MockImageCollageMakerPlatform fakePlatform = MockImageCollageMakerPlatform();
//     ImageCollageMakerPlatform.instance = fakePlatform;
//
//     expect(await imageCollageMakerPlugin.getPlatformVersion(), '42');
//   });
// }
