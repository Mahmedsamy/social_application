import 'package:Social_application/layout/cubit/cubit.dart';
import 'package:Social_application/layout/social_layout.dart';
import 'package:Social_application/modules/login/social_login_screen.dart';
import 'package:Social_application/network/local/cache_helper.dart';
import 'package:Social_application/network/remote/dio_helper.dart';
import 'package:Social_application/shared/bloc_observer.dart';
import 'package:Social_application/shared/cubit/app_cubit.dart';
import 'package:Social_application/shared/cubit/states.dart';
import 'package:Social_application/styles/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  Bloc.observer = MyBlocObserver();

  DioHelper.init();
  await CacheHelper.init();

  bool isDark = CacheHelper.getData(key: 'isDark') ?? false;

  Widget widget; //= SocialLoginScreen()

  // bool onBoarding = CacheHelper.getData (key: 'onBoarding')??false;

  String uId = CacheHelper.getData(key: 'uId') ?? '';
  // debugPrint(token);

  // if (onBoarding) {
  //   if (token.isNotEmpty) {
  //     widget = const ShopLayout();
  //   } else {
  //     widget = LoginScreen();
  //   }
  // } else {
  //   widget = const OnBoardingScreen();
  // }
//done ? _|_ fuck youuuuuuuuuuuuuuuuuuuuuu.... a5d al user wa al pass aly hnak a7thm 3l4an alogin in

  if (uId.isNotEmpty) {
    widget = const SocialLayout();
  } else {
    widget = SocialLoginScreen();
  }

  runApp(MyApp(
    isDark: isDark,
    widget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  final Widget widget;

  const MyApp({super.key, required this.isDark, required this.widget});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AppCubit()),
        BlocProvider(
          create: (BuildContext context) => SocailCubit()..getUserData(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              //themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
              home: widget,
            );
          }),
    );
  }
}
