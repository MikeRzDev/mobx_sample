import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'main_page_store.g.dart';

class MainPageStore = _MainPageStore with _$MainPageStore;

abstract class _MainPageStore with Store {
  @observable
  String? observableText;

  @action
  void reset() {
    observableText = null;
  }

  @computed
  Color get color {
    switch (observableText) {
      case 'red':
        return Colors.red;
      case 'yellow':
        return Colors.yellow;
      case 'blue':
        return Colors.blue;
      default:
        return Colors.white;
    }
  }
}
