import 'package:flutter/material.dart';

import 'configuration_parameter.dart';

abstract class RectParameter extends ConfigurationParameter {
  Rect value;

  RectParameter(super.name, super.displayName, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RectParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
