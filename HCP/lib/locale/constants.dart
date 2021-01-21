import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String INDONESIAN = 'in';
const String LANGUAGE_CODE = 'languageCode';

Future<Locale> setLocaleinMemory(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  print("setlocaleinmemory $languageCode");

  await prefs.setString(LANGUAGE_CODE, languageCode);

  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale _temp;
  switch (languageCode) {
    default:
      _temp = Locale(languageCode, 'ID');
  }
  return _temp;
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(LANGUAGE_CODE) ?? INDONESIAN;
  print("getlocale $languageCode");
  return _locale(languageCode);
}
