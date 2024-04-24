class MyValidator{
  static String emailValidator(final String value){
    String message='';
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if(value.trim().isEmpty) {
      message = 'Please enter email';
    }
    if(value.trim().isNotEmpty && !emailRegex.hasMatch(value)) {
      message = 'Please enter valid email';
    }
    if(emailRegex.hasMatch(value)) {
      message = 'Email is valid';
    }
    return message;
  }

  static String passwordValidator(final String value){
    String message='';
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if(value.trim().isEmpty) {
      message = 'Please enter Password';
    }
    if(value.trim().isNotEmpty && value.length < 8) {
      message = 'Password must be more than 7 character';
    }
    if(value.trim().isNotEmpty && value.length > 7) {
      message = 'Password is valid';
    }
    return message;
  }
}