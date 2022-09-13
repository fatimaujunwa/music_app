class SignInBody{
  final String email;
  final String password;

  final String username;
  SignInBody({required this.email,required this.password,required this.username});

  Map<String, dynamic> toJson(){
    Map<String,dynamic>data=new Map<String,dynamic>();
    data["name"]=this.username;
    data["password"]=this.password;
    data["email"]=this.email;


    return data;
  }
}