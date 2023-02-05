import 'package:flutter/material.dart';

import 'configuration_parameter.dart';

abstract class SizeParameter extends ConfigurationParameter {
  Size value;

  SizeParameter(super.name, super.displayName, this.value, {super.hidden});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizeParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
