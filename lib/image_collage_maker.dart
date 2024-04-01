
import 'image_collage_maker_platform_interface.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImageCollage extends StatefulWidget {
  final List<XFile> images;
  ImageCollage({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageCollage> createState() => _ImageCollageState();
}

class _ImageCollageState extends State<ImageCollage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.images.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: widget.images.length>4?1:0.6,
          crossAxisCount: 2,
          crossAxisSpacing: 18,
        ),
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((12)),
                image: DecorationImage(
                    image:
                    Image.file(File(widget.images[index].path),fit: BoxFit.cover,).image),),
            ),
          );
        });
  }
}

