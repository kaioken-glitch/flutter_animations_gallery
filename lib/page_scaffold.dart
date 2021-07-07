import 'package:flutter/material.dart';
import 'package:flutter_animations_gallery/gallery_page_selector.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({
    Key? key,
    required this.title,
    this.actions = const [],
    required this.body,
  }) : super(key: key);
  final String title;
  final List<Widget> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      body: body,
      drawer: GalleryPageSelector(),
    );
  }
}
