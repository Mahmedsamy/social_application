import 'package:flutter/material.dart';

class NewPostsScreen extends StatelessWidget {
  const NewPostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text(
          'Add posts',
        ),
      ),
    );
  }
}
