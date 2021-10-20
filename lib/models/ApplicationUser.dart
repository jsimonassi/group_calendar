

class ApplicationUser{

  String _name = "";
  String _password = "";
  String _email = "";
  String _image = "";
  String _pushToken = "";
  String _bornDate = "";

  ApplicationUser();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "name" : this._name,
      "email" : this._email,
      "image": this._image,
      "password": this._password,
      "pushToken": this._pushToken,
      "bornDate": this._bornDate
    };
    return map;
  }

  ApplicationUser mapToUser(Map<String, dynamic> mapUser){
    ApplicationUser user = new ApplicationUser();
    user._name = mapUser["name"];
    user._password = mapUser["password"];
    user._email = mapUser["email"];
    user._image = mapUser["image"];
    user._pushToken = mapUser["pushToken"];
    user._bornDate = mapUser["bornDate"];
    return user;
  }

  String get bornDate => _bornDate;

  set bornDate(String value) {
    _bornDate = value;
  }

  String get pushToken => _pushToken;

  set pushToken(String value) {
    _pushToken = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}