import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // set jwtToken when logged in
  Future<void> setJwtToken(String jwtToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> jwtTokenMap = <String, dynamic>{
      'jwtToken': jwtToken,
    };
    final String jwtTokenString = jsonEncode(jwtTokenMap);
    await prefs.setString('jwtToken', jwtTokenString);
  }

  // get jwtToken idk where it is used
  Future<String> getJwtToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtTokenString = prefs.getString('jwtToken');
    if (jwtTokenString != null) {
      final Map<String, dynamic> jwtTokenMap =
          jsonDecode(jwtTokenString) as Map<String, dynamic>;
      return jwtTokenMap['jwtToken'] as String;
    } 
    return '';
  }

  // delete jwtToken when logged out
  Future<void> deleteJwtToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('jwtToken');
  }
}
