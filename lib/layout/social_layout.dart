import 'package:Social_application/layout/cubit/cubit.dart';
import 'package:Social_application/layout/cubit/state.dart';
import 'package:Social_application/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SocialLayout extends StatelessWidget {
  const SocialLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocailCubit, SocialStates>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'ples verify your email',
                    ),
                    const SizedBox(
                        width: 20.0 ),
                    defaultButton(
                        function: () {},
                        text: 'send email verification',
                        isUpperCase: true  ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
