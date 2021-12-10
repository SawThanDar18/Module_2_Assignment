import 'package:email_validator/email_validator.dart';

void main() {
  print(validateEmail("saw@gmail.com"));
  print(validateEmail("@gmail.comm"));
  print(validateEmail("sawthandar@gmail.comm"));

  //print(validatePhoneNumber("09733739"));
  //print(validatePhoneNumber("0938383838"));
  //print(validatePhoneNumber("+9593838888"));
}

bool validateEmail(String email) {
  bool isEmailValidate = EmailValidator.validate(email);

  if (email.endsWith("@gmail.com") && isEmailValidate) {
    return true;
  } else
    return false;
}

var replacePhoneNumber;

bool validatePhoneNumber(String phone) {
  if (phone.length < 10) {
    return false;
  } else if (phone.length >= 10 && phone.startsWith("09")) {
    replacePhoneNumber = phone.replaceFirst("09", "+959");
    print(replacePhoneNumber);
    return true;
  } else if (phone.length >= 10 && phone.startsWith("+959")) {
    return true;
  }
}
