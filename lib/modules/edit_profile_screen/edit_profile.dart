import 'package:Social_application/layout/cubit/cubit.dart';
import 'package:Social_application/layout/cubit/state.dart';
import 'package:Social_application/shared/components.dart';
import 'package:Social_application/styles/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileScreen extends StatelessWidget {
   EditProfileScreen({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).usermodel;
        return Scaffold(
          appBar: defaultAppBar(
            context: context,
            title: 'Edit Profile',
            actions: [
              defaultTextButton(
                onPress: () {},
                text: 'update',
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
          ),
          body: Padding(
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
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Container(
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
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                    radius: 20.0,
                                    child: Icon(
                                      IconBroken.Camera,
                                      size: 16.0,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              child: CircleAvatar(
                                radius: 45.0,
                                backgroundImage:
                                    NetworkImage('${userModel.image}'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const CircleAvatar(
                                  radius: 11.0,
                                  child: Icon(
                                    IconBroken.Camera,
                                    size: 16.0,
                                  )),
                            ),
                          ],
                        ),
                      ]),
                ),
                defaultTextFormField(
                  controller: nameController,
                  textInputType: TextInputType.name,
                  validate: ( value)
                  {
                    if(value.isEmpty)
                    {
                      return 'name must not be empty';
                    }else {
                      return null;
                    }
                  },
                  label: 'Name',
                  prefix: IconBroken.User,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                defaultTextFormField(
                  controller: nameController,
                  textInputType: TextInputType.name,
                  validate: ( value)
                  {
                    if(value.isEmpty)
                    {
                      return 'name must not be empty';
                    }else {
                      return null;
                    }
                  },
                  label: 'Bio',
                  prefix: IconBroken.Info_Circle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
