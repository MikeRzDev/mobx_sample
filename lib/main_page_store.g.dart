// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainPageStore on _MainPageStore, Store {
  Computed<Color>? _$colorComputed;

  @override
  Color get color => (_$colorComputed ??=
          Computed<Color>(() => super.color, name: '_MainPageStore.color'))
      .value;

  final _$observableTextAtom = Atom(name: '_MainPageStore.observableText');

  @override
  String? get observableText {
    _$observableTextAtom.reportRead();
    return super.observableText;
  }

  @override
  set observableText(String? value) {
    _$observableTextAtom.reportWrite(value, super.observableText, () {
      super.observableText = value;
    });
  }

  final _$_MainPageStoreActionController =
      ActionController(name: '_MainPageStore');

  @override
  void reset() {
    final _$actionInfo = _$_MainPageStoreActionController.startAction(
        name: '_MainPageStore.reset');
    try {
      return super.reset();
    } finally {
      _$_MainPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
observableText: ${observableText},
color: ${color}
    ''';
  }
}
