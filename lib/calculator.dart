import 'package:life_time/user_data.dart';

class Calculator{
  UserData _userData;
  Calculator(this._userData);

  double calculate(){
    double result;

    result = 50 + _userData.spor - _userData.smoken;

    result = (result + (_userData.height/_userData.weight));

    if(_userData.chosenGender == 'KADIN')
      {
        return result+3;
      }else{
      return result;
    }
  }
}