import '../wisssi_core_base.dart';

class Wisdom {
  const Wisdom({required this.name, required this.description});

  final String name;
  final Map<LanguageType, String> description;
}
