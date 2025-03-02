const String _ko = 'ko';
const String _en = 'en';

enum LanguageType {
  ko(name: _ko),
  en(name: _en);

  const LanguageType({required this.name});

  final String name;
}

extension LanguageTypeExtension on LanguageType {
  LanguageType? fromString(String name) {
    switch (name) {
      case _ko:
        return LanguageType.ko;
      case _en:
        return LanguageType.en;
      default:
        return null;
    }
  }
}
