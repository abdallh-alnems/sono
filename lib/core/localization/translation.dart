import 'package:get/get.dart';
import 'language/ar.dart';
import 'language/en.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
// ============================ Arabic ============================
        "ar": ArabicTranslations.ar,

// ============================ English ============================
        "en": EnglishTranslations.en,
      };
}
