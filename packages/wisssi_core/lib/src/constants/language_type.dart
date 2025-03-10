const String _ko = 'ko';
const String _en = 'en';

enum LanguageType {
  ko(name: _ko),
  en(name: _en);

  const LanguageType({required this.name});

  static LanguageType? fromString(String name) {
    if (name.isEmpty) {
      return null;
    }

    final String lowerName = name.toLowerCase();

    switch (lowerName) {
      case _ko:
        return LanguageType.ko;
      case _en:
        return LanguageType.en;
      default:
        return null;
    }
  }

  final String name;
}
