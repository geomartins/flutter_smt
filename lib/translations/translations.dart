import 'package:cruz/translations/english.dart';
import 'package:cruz/translations/german.dart';
import 'package:get/get.dart';


class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    ... German().keys, ...English().keys
  };
}