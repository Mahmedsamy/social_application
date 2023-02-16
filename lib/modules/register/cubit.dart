import 'package:Social_application/modules/register/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart ';



class SocialRegisterCubit extends Cubit<SocialRegisterState>
{
  SocialRegisterCubit() : super (SocialRegisterInitialState());

  static SocialRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) {

    print('object');

    emit(SocialRegisterLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password
    )
        .then((value) {
      debugPrint(value.user!.email);
      debugPrint(value.user!.uid);
      emit(SocialRegisterSuccessState());
    }).catchError((error){
      emit(SocialRegisterErrorState(error.toString()));
    });
  }

  }



  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

   void changePasswordVisibility()
   {
     isPassword = !isPassword;
     suffix = isPassword ? Icons.visibility_off_outlined : Icons.visibility;

    // emit (SocialRegisterChangePasswordVisibiltyState());
   }
