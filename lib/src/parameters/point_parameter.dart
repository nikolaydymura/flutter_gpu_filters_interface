import 'dart:math';

import 'configuration_parameter.dart';

abstract class PointParameter extends ConfigurationParameter {
  Point<double> value;

  PointParameter(super.name, super.displayName, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
