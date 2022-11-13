import 'package:flutter/material.dart';
import 'configuration_parameter.dart';

abstract class ColorParameter extends ConfigurationParameter {
  Color value;

  ColorParameter(super.name, super.displayName, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
