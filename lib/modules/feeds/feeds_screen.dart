import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child:  const Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 20.0,
                child: Image(
                  image: AssetImage (
                    'assets/images/full-shot-travel-concept-with-landmarks.jpg',
                  ),
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
               ),
          ),
        ),
      ],
    );
  }
}
