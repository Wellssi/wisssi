import 'option.dart';
import 'wisdom.dart';

class Command extends Wisdom {
  const Command({
    required super.name,
    required super.description,
    required this.homepage,
    this.options = const <Option>{},
  });

  final String homepage;
  final Set<Option> options;
}
