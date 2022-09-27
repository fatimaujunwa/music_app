class SignUpBody{
  final String username;
  final String email;
  final String password;
  final String confirmPassword;
  SignUpBody({
    required this.password,
    required this.email,
    required this.username,
    required this.confirmPassword

});
  Map<String,dynamic> toJson(){
    final Map<String, dynamic> data =new Map<String,dynamic>();
    data["username"]=this.username;
    data["email"]=this.email;
    data["password"]=this.password;
    // data["confirmPassword"]=this.confirmPassword;
    return data;
  }

}