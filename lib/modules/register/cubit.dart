import 'package:Social_application/models/social_user_model.dart';
import 'package:Social_application/modules/register/state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart ';



class SocialRegisterCubit extends Cubit<SocialRegisterState> {
  SocialRegisterCubit() : super (SocialRegisterInitialState());

  static SocialRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String isEmailVerified,
  }) {

    emit(SocialRegisterLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
        email: email,
        password: password
    )
        .then((value) {
       debugPrint(value.user!.email);
      // debugPrint(value.user!.uid);
      userCreate(
          name: name,
          email: email,
          phone: phone,
        isEmailVerified : false,
          uId: value.user!.uid,
      );

    }).catchError((error) {
      print("FirebaseAuth Error $error");
      emit(SocialRegisterErrorState(error.toString()));
    });
  }

  void userCreate({
    required String name,
    required String email,
    required String phone,
    required String uId,
    required bool isEmailVerified,
  }) {
    SocialUserModel model = SocialUserModel(
        email: email,
        name: name,
        phone: phone,
        uId: uId,
        bio: 'write your bio ...',
      cover: 'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=1480&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',
      image: 'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=1480&t=st=1678798627~exp=1678799227~hmac=0f158997e20ee65e0bb05b4c07ea49f86e89db53096f1d783ce4ee2aa99420f6',

      isEmailVerified : false,
    );

    debugPrint("FirebaseFirestore outside");

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap()).then((value) {
          debugPrint("FirebaseFirestore then");
      emit(SocialCreateUserSuccessState());
    }).catchError((error){
      print("Firebase Firestore Error $error");

      emit(SocialCreateUserErrorState(error));
    });}


  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = false;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_off_outlined : Icons.visibility;
    emit(SocialRegisterChangePasswordVisibiltyState());
  }
}