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
          appBar: AppBar(
            title:const Text("Social Main"),
          ),
          body: Column(
            children: [
              Container(
                //color:Colors.amber.withOpacity(0.2),
                height: 50.0,
                child: Row(
                  children: [
                    const Expanded(
                      child:  Text(
                        'ples verify your email',
                      ),
                    ),
                    const SizedBox(
                      width: 50.0,
                    ),
                       defaultButton(
                        width: 150.0,
                          function: () {},
                          text: 'send ',
                          isUpperCase: true
                       ),
                  ],
                ),
              ),
            ],
          )
        );
      },
    );
  }
}
