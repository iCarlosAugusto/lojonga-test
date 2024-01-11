import 'package:flutter/material.dart';
import 'package:lojangtest/widgets/text_widget.dart';

class VideoWidget extends StatelessWidget {
  VideoWidget({
    super.key,
    required this.title,
    required this.description,
    required this.videoUrl
  });

  String title;
  String videoUrl;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(
            title,
            margin: const EdgeInsets.only(bottom: 16),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            color: Colors.blue,
          ),
          TextWidget(
            description,
            margin: const EdgeInsets.only(top: 6),
            textAlign: TextAlign.center,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}