class SocialUserModel
{
   String? name;
   String? email;
   String? phone;
   String? uId;
   bool? isEmailVerified;


  SocialUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.isEmailVerified,
});

  SocialUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'name' : name,
      'email' : email,
      'phone' : phone,
      'isEmailVerified' : isEmailVerified,
    };
  }

}