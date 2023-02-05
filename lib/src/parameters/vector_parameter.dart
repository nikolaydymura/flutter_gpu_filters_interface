import 'configuration_parameter.dart';

abstract class VectorParameter extends ConfigurationParameter {
  List<double> value;

  VectorParameter(super.name, super.displayName, this.value, {super.hidden});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
