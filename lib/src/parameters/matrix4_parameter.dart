import 'package:flutter/material.dart';

import 'configuration_parameter.dart';

abstract class Matrix4Parameter extends ConfigurationParameter {
  Matrix4 value;

  Matrix4Parameter(super.name, super.displayName, this.value, {super.hidden});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Matrix4Parameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
