import 'configuration_parameter.dart';

abstract class VectorParameter<T> extends ConfigurationParameter {
  T value;

  VectorParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  List<double> get values;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
