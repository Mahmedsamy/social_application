import 'package:Social_application/layout/cubit/state.dart';
import 'package:Social_application/models/social_user_model.dart';
import 'package:Social_application/shared/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SocailCubit extends Cubit<SocialStates>
{
  SocailCubit() : super(SocialInitialState());

   static SocailCubit get(context) => BlocProvider.of(context);

  SocialUserModel? model;

   void getUserData()
  {
    emit(SocialGetUserLoadingState());

    FirebaseFirestore.instance
        .collection('Users')
        .doc(uId)
        .get()
        .then((value) {
           // print (value.data());
            model = SocialUserModel.fromJson(value.data()!);
            emit (SocialGetUserSuccessState());
        })
        .catchError((error) {
          print (error.toString());
          emit(SocialGetUserErrorState(error.toString()));
    });
  }
}