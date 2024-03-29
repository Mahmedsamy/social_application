abstract class SocialStates {}


class SocialInitialState extends SocialStates {}

class SocialGetUserSuccessState extends SocialStates {}

class SocialGetUserLoadingState extends SocialStates {}


class SocialGetUserErrorState extends SocialStates
{
   final String error;

  SocialGetUserErrorState(this.error);

}

class SocialChangeBottomNavState extends SocialStates {}

class SocialNewPostsState extends SocialStates {}