import 'command.dart';
import 'wisdom.dart';

class Tool extends Wisdom {
  Tool({
    required super.name,
    required super.description,
    required this.homepage,
    this.commands = const <Command>{},
  });

  final String homepage;
  final Set<Command> commands;
}
