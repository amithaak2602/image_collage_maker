import 'package:flutter/material.dart';
import 'package:image_collage_maker/image_collage_maker.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<XFile> _image=[];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: _image.length!=0?ImageCollage(images: _image,
        ):Text(("dhjvs")),




        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final pickedFile =await picker.pickMultiImage();
            // await picker.pickImage(source: ImageSource.gallery);

            setState(() {
              if (pickedFile.length!=0) {
                _image.addAll(pickedFile);

              }});
          },
        ),
      ),
    );
  }
}
