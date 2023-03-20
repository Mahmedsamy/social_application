import 'package:Social_application/layout/cubit/cubit.dart';
import 'package:Social_application/layout/cubit/state.dart';
import 'package:Social_application/modules/edit_profile_screen/edit_profile.dart';
import 'package:Social_application/shared/components.dart';
import 'package:Social_application/styles/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).usermodel;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 180.0,
                child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          width: double.infinity,
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0)),
                            image: DecorationImage(
                              image: NetworkImage(
                                '${userModel!.cover}',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        child:  CircleAvatar(
                          radius: 45.0,
                          backgroundImage: NetworkImage(
                              '${userModel.image}'
                          ),
                        ),
                      ),
                    ]),
              ),
              Text(
                '${userModel.name}',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.orange,
                    ),
              ),
              Text(
                ' ${userModel.bio}',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              ' 100',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.orange,
                                  ),
                            ),
                            Text(
                              ' posts ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              ' 260',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.orange,
                                  ),
                            ),
                            Text(
                              ' photos ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              ' 10k',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.orange,
                                  ),
                            ),
                            Text(
                              ' Follwers ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              ' 70',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.orange,
                                  ),
                            ),
                            Text(
                              ' Following ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(onPressed: () {},
                    child: const Text(
                      'Add Photo',
                    ),),

                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  OutlinedButton(onPressed: () {
                    navigateTo(context, EditProfileScreen(),);
                  },
                    child: const Icon(
                      IconBroken.Edit,
                    )),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
