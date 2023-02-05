import 'configuration_parameter.dart';

abstract class StringParameter extends ConfigurationParameter {
  String value;

  StringParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
