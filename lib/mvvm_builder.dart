import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'component_builder.dart';
import 'mvvm_model.dart';
import 'presenter_builder.dart';

export 'component_builder.dart';
export 'mvvm_model.dart';
export 'component_animated_builder.dart';
export 'presenter_builder.dart';
export 'mvvm_context.dart';

class MvvmBuilder {
  static const MethodChannel _channel = const MethodChannel('mvvm_builder');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }


}

