import 'configuration_parameter.dart';

abstract class BoolParameter extends ConfigurationParameter {
  bool value;

  BoolParameter(
      super.name,
      super.displayName,
      this.value,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is BoolParameter &&
              runtimeType == other.runtimeType &&
              value == other.value;

  @override
  int get hashCode => value.hashCode;
}