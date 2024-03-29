import 'package:Social_application/layout/cubit/state.dart';
import 'package:Social_application/models/social_user_model.dart';
import 'package:Social_application/modules/chats/chats_screen.dart';
import 'package:Social_application/modules/feeds/feeds_screen.dart';
import 'package:Social_application/modules/new_post/new_posts.dart';
import 'package:Social_application/modules/settings/settings_screen.dart';
import 'package:Social_application/modules/users/users_screen.dart';
import 'package:Social_application/shared/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SocialCubit extends Cubit<SocialStates> {
  SocialCubit() : super(SocialInitialState());

  static SocialCubit get(context) => BlocProvider.of(context);

  SocialUserModel? usermodel;

  void getUserData() {
    emit(SocialGetUserLoadingState());

    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      print("user data$value");
      print("user data$uId");
      usermodel = SocialUserModel.fromJson(value.data()!);
      emit(SocialGetUserSuccessState());
    }).catchError((error) {
      print("error ${error.toString()}");
      emit(SocialGetUserErrorState(error.toString()));
    });
  }

  int currentIndex = 0;

  List<Widget> screens = [
    const FeedsScreen(),
    const ChatsScreen(),
    const NewPostsScreen(),
    const UsersScreen(),
    const SettingsScreen(),
  ];

  List<String> titles = ['Home', 'Chats', 'Post ', 'Users', 'Settings'];

  void changeBottomNavState(int index) {
    if (index == 2)
      emit(SocialNewPostsState());
    else {
      currentIndex = index;
      emit(SocialChangeBottomNavState());
    }
  }
}
