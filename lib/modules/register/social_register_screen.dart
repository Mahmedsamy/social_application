import 'package:Social_application/modules/register/cubit.dart';
import 'package:Social_application/modules/register/state.dart';
import 'package:Social_application/shared/components.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SocialRegisterScreen extends StatelessWidget {

  SocialRegisterScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passController = TextEditingController();

  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return  BlocProvider(
      create: (BuildContext context) => SocialRegisterCubit(),
      child: BlocConsumer<SocialRegisterCubit, SocialRegisterState>(
        listener: (context, state)
        {
          if(state is SocialRegisterSuccessState)
          {


            }
        },
        builder: (context, state) {

          return Scaffold(
            appBar: AppBar(),
            body:  Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Register now to communicate with friends',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),

                        defaultTextFormField(
                          controller: nameController,
                          textInputType: TextInputType.name,
                          label: "Name",
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'please enter your name address';
                            } else {
                              return null;
                            }
                          },
                          prefix: Icons.person,
                        ),

                        const SizedBox(
                          height: 30.0,
                        ),

                        defaultTextFormField(
                            controller: emailController,
                            textInputType: TextInputType.emailAddress,
                            label: "Email",
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'please enter your email address';
                              } else {
                                return null;
                              }
                            },
                            prefix: Icons.email_outlined),

                        const SizedBox(
                          height: 30.0,
                        ),

                        defaultTextFormField(
                            controller: passController,
                            textInputType: TextInputType.visiblePassword,
                            onSubmit: (value)
                            {

                            },
                            //ispassword: true,
                            label: "Password",
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'please enter your Password';
                              } else {
                                return null;
                              }
                            },
                            prefix: Icons.lock_outline),

                        const SizedBox(
                          height: 30.0,
                        ),


                        defaultTextFormField(
                            controller: phoneController,
                            textInputType: TextInputType.phone,
                            label: "Phone",
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'please enter your phone address';
                              } else {
                                return null;
                              }
                            },
                            prefix: Icons.phone),

                        const SizedBox(
                          height: 10.0,
                        ),


                        ConditionalBuilder(
                          condition: state is ! SocialRegisterLoadingState,
                          builder: (context) => defaultButton(
                            function: ()
                            {
                              if (formKey.currentState!.validate())
                              {
                                SocialRegisterCubit.get(context).userRegister(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passController.text,
                                  phone: phoneController.text,
                                );
                              }

                            },
                            text: 'register',
                            isUpperCase: true,
                          ),
                          fallback: (context) => const Center(child: CircularProgressIndicator()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );

        },
      ),
    );
  }
}
