class SignUpParams {
  final String userName;
  final String email;
   final String password;

  SignUpParams({
    required this.userName,
    required this.email,
    required this.password});

  Map<String,dynamic> toMap() {
    return <String,dynamic>{
      'email': email,
      'password': password,
      'username': userName,
    };
  }
}