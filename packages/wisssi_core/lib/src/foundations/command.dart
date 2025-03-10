import 'option.dart';
import 'wisdom.dart';

class Command extends Wisdom {
  const Command({
    required super.name,
    required super.description,
    this.options = const <Option>{},
  });

  final Set<Option> options;
}
