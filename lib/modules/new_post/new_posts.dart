import 'package:Social_application/shared/components.dart';
import 'package:flutter/material.dart';

class NewPostsScreen extends StatelessWidget {
  const NewPostsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
      title: 'Add posts',
      ),
    );
  }
}
