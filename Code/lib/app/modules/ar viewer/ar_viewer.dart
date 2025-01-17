import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ARViewer extends StatelessWidget {
  final String? src;
  final String? alt;
  final String? title;

  const ARViewer(
      {required this.src, required this.alt, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: ModelViewer(
        src: src!,
        alt: alt,
        ar: true,
        arScale: ArScale.fixed,
        autoRotate: true,
      ),
    );
  }
}
