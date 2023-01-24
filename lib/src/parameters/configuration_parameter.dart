import 'dart:async';

import '../configuration/filter_configuration.dart';

abstract class ConfigurationParameter {
  final String name;
  final String displayName;

  ConfigurationParameter(this.name, this.displayName);

  FutureOr<void> update(FilterConfiguration configuration);

  @override
  String toString() {
    return '$runtimeType: $name => $displayName';
  }
}
