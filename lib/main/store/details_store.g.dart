// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsStore on _DetailsStore, Store {
  Computed<Function>? _$getDetailsComputed;

  @override
  Function get getDetails =>
      (_$getDetailsComputed ??= Computed<Function>(() => super.getDetails,
              name: '_DetailsStore.getDetails'))
          .value;

  late final _$contextIUAtom =
      Atom(name: '_DetailsStore.contextIU', context: context);

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

  late final _$isLoadAtom =
      Atom(name: '_DetailsStore.isLoad', context: context);

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

  late final _$idAtom = Atom(name: '_DetailsStore.id', context: context);

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

  late final _$membersListAtom =
      Atom(name: '_DetailsStore.membersList', context: context);

  @override
  List<Widget> get membersList {
    _$membersListAtom.reportRead();
    return super.membersList;
  }

  @override
  set membersList(List<Widget> value) {
    _$membersListAtom.reportWrite(value, super.membersList, () {
      super.membersList = value;
    });
  }

  late final _$politicalPartyDetailsAtom =
      Atom(name: '_DetailsStore.politicalPartyDetails', context: context);

  @override
  PoliticalPartyDetails? get politicalPartyDetails {
    _$politicalPartyDetailsAtom.reportRead();
    return super.politicalPartyDetails;
  }

  @override
  set politicalPartyDetails(PoliticalPartyDetails? value) {
    _$politicalPartyDetailsAtom.reportWrite(value, super.politicalPartyDetails,
        () {
      super.politicalPartyDetails = value;
    });
  }

  late final _$_DetailsStoreActionController =
      ActionController(name: '_DetailsStore', context: context);

  @override
  void setcontext(BuildContext value) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.setcontext');
    try {
      return super.setcontext(value);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setisLoad(bool value) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.setisLoad');
    try {
      return super.setisLoad(value);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setid(int value) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.setid');
    try {
      return super.setid(value);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setmembersList(List<Widget> value) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.setmembersList');
    try {
      return super.setmembersList(value);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setpoliticalPartyDetails(PoliticalPartyDetails? value) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.setpoliticalPartyDetails');
    try {
      return super.setpoliticalPartyDetails(value);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contextIU: ${contextIU},
isLoad: ${isLoad},
id: ${id},
membersList: ${membersList},
politicalPartyDetails: ${politicalPartyDetails},
getDetails: ${getDetails}
    ''';
  }
}
