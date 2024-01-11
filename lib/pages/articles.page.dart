import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16)
        )
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Text("oi")
          ],
        ),
      ),
    );
  }
}