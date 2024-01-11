import 'package:flutter/material.dart';
import 'package:lojangtest/models/video.model.dart';
import 'package:lojangtest/utils/http.request.dart';
import 'package:lojangtest/viewmodels/videos.viewmodel.dart';
import 'package:lojangtest/widgets/video.widget.dart';
import 'package:provider/provider.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<VideosViewModel>(
      builder: (context, value, child) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16)
          )
        ),
        child: ListView.separated(
          itemBuilder: (_, index) {
            VideoModel item = value.videos[index];
            return VideoWidget(
              title: item.name,
              description: item.description,
              videoUrl: item.url
            );
          }, 
          separatorBuilder: (_,__) => const Divider(),
          itemCount: value.videos.length
        )
      ),
    );
  }
}