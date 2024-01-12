import 'package:flutter/material.dart';
import 'package:lojangtest/models/article.model.dart';
import 'package:lojangtest/viewmodels/articles.viewmodel.dart';
import 'package:lojangtest/widgets/video.widget.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<ArticlesViewModel>(
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
            ArticleModel item = value.articles[index];
            return VideoWidget(
              title: item.title,
              description: item.text,
              videoUrl: item.image
            );
          }, 
          separatorBuilder: (_,__) => const Divider(),
          itemCount: value.articles.length
        )
      ),
    );
  }
}