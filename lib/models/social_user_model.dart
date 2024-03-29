class SocialUserModel
{
   String? name;
   String? email;
   String? phone;
   String? uId;
   String? image;
   String? cover;
   String? bio;
   bool? isEmailVerified;


  SocialUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.image,
    required this.cover,
    required this.bio,
    required this.isEmailVerified,
});

  SocialUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    cover = json['cover'];
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
      'uId' : uId,
      'image' : image,
      'cove' : cover,
      'bio' : bio,
      'isEmailVerified' : isEmailVerified,
    };
  }

}