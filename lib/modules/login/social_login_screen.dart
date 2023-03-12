import 'package:Social_application/layout/social_layout.dart';
import 'package:Social_application/modules/login/cubit.dart';
import 'package:Social_application/modules/login/state.dart';
import 'package:Social_application/modules/register/social_register_screen.dart';
import 'package:Social_application/network/local/cache_helper.dart';
import 'package:Social_application/shared/components.dart';
import 'package:Social_application/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SocialLoginScreen extends StatelessWidget {
  SocialLoginScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();


    return BlocProvider(
      create: (context) => SocialLoginCubit(),
      child: BlocConsumer<SocialLoginCubit, SocialLoginState>(
        listener: (context, state)
        {
          if(state is SocialLoginErrorState)
          {
            showToast(
            message: state.error,
            states: ToastStates.ERROR,);
          }
          if (state is SocialLoginSuccessState)
          {
            uId =state.uId;
            CacheHelper.saveData(
              key: 'uId',
              value: state.uId,
            ).then( (value) {

              navigateAndFinish(
                context,
                const SocialLayout(),
              );
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineSmall,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Login now to communicate with friends',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                            color: Colors.grey,
                          ),
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
                            onSubmit: (value) {
                              if (formKey.currentState!.validate()) {
                                SocialLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passController.text,
                                );
                              }
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

                        ConditionalBuilder(
                          condition: state is! SocialLoginLoadingState,
                          builder: (context) =>
                              defaultButton(
                                function: () {
                                  if (formKey.currentState!.validate()) {
                                    SocialLoginCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passController.text,
                                    );
                                  }
                                },
                                text: 'login',
                                isUpperCase: true,
                              ),
                          fallback: (context) =>
                          const Center(child: CircularProgressIndicator()),
                        ),


                        const SizedBox(
                          height: 30.0,
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('dont/t have an account?'),

                            defaultTextButton(
                                onPress: () {
                                  navigateTo(
                                      context,
                                      SocialRegisterScreen());
                                },
                                text: 'Register Here')
                          ],
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
