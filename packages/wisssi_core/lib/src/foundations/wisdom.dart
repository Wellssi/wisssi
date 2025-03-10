import '../constants/constants.dart';

class Wisdom {
  const Wisdom({required this.name, required this.description});

  factory Wisdom.fromJson(Map<String, dynamic> json) {
    final String name = json['name'].toString();
    final Map<String, dynamic> rawDescription =
        json['description'] as Map<String, dynamic>;

    final Map<LanguageType, String> description = <LanguageType, String>{};
    for (final String key in rawDescription.keys) {
      final LanguageType? languageType = LanguageType.fromString(key);
      if (languageType != null) {
        description[languageType] = rawDescription[key].toString();
      }
    }

    return Wisdom(name: name, description: description);
  }

  final String name;
  final Map<LanguageType, String> description;
}
