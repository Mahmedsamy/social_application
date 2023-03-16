class SocialUserModel
{
   String? name;
   String? email;
   String? phone;
   String? uId;
   String? image;
   String? bio;
   bool? isEmailVerified;


  SocialUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.image,
    required this.bio,
    required this.isEmailVerified,
});

  SocialUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    image = json['image'];
    bio = json['bio'];

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