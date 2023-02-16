import 'package:Social_application/modules/login/social_login_screen.dart';
import 'package:flutter/material.dart';

import '../network/local/cache_helper.dart';
import 'components.dart';


const defaultColor = Colors.deepOrange;

void signOut(
    context,
    ) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigateAndFinish(context, SocialLoginScreen());
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element) =>
      print(element.group(0))
  );
}

dynamic token='';
String uId='';