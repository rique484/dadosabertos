// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  Computed<Function>? _$getPoliticalListComputed;

  @override
  Function get getPoliticalList => (_$getPoliticalListComputed ??=
          Computed<Function>(() => super.getPoliticalList,
              name: '_HomeStore.getPoliticalList'))
      .value;
  Computed<Function>? _$detailsComputed;

  @override
  Function get details => (_$detailsComputed ??=
          Computed<Function>(() => super.details, name: '_HomeStore.details'))
      .value;

  late final _$contextIUAtom =
      Atom(name: '_HomeStore.contextIU', context: context);

  @override
  BuildContext? get contextIU {
    _$contextIUAtom.reportRead();
    return super.contextIU;
  }

  @override
  set contextIU(BuildContext? value) {
    _$contextIUAtom.reportWrite(value, super.contextIU, () {
      super.contextIU = value;
    });
  }

  late final _$isLoadAtom = Atom(name: '_HomeStore.isLoad', context: context);

  @override
  bool get isLoad {
    _$isLoadAtom.reportRead();
    return super.isLoad;
  }

  @override
  set isLoad(bool value) {
    _$isLoadAtom.reportWrite(value, super.isLoad, () {
      super.isLoad = value;
    });
  }

  late final _$listPoliticalPartyAtom =
      Atom(name: '_HomeStore.listPoliticalParty', context: context);

  @override
  List<PoliticalParty>? get listPoliticalParty {
    _$listPoliticalPartyAtom.reportRead();
    return super.listPoliticalParty;
  }

  @override
  set listPoliticalParty(List<PoliticalParty>? value) {
    _$listPoliticalPartyAtom.reportWrite(value, super.listPoliticalParty, () {
      super.listPoliticalParty = value;
    });
  }

  late final _$idAtom = Atom(name: '_HomeStore.id', context: context);

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void setcontext(BuildContext value) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.setcontext');
    try {
      return super.setcontext(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setisLoad(bool value) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.setisLoad');
    try {
      return super.setisLoad(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setlistPoliticalParty(List<PoliticalParty>? value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setlistPoliticalParty');
    try {
      return super.setlistPoliticalParty(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setid(int value) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.setid');
    try {
      return super.setid(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contextIU: ${contextIU},
isLoad: ${isLoad},
listPoliticalParty: ${listPoliticalParty},
id: ${id},
getPoliticalList: ${getPoliticalList},
details: ${details}
    ''';
  }
}
