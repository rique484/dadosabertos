import 'package:flutter/material.dart';
import 'package:john/infra/remote_camara.dart';
import 'package:john/main/ui/details_political_party.dart';
import 'package:mobx/mobx.dart';

import '../../domain/model/politicals_party.dart';
//flutter packages pub run build_runner watch --delete-conflicting-outputs
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{
  @observable
  BuildContext? contextIU;
  @action
  void setcontext(BuildContext value) => contextIU = value;

  @observable
  bool isLoad = false;
  @action
  void setisLoad(bool value) => isLoad = value;

  @observable
  List<PoliticalParty>? listPoliticalParty = [];
  @action
  void setlistPoliticalParty(List<PoliticalParty>? value) => listPoliticalParty = value;

  @observable
  int id = 0;
  @action
  void setid(int value) => id = value;

  @computed
  Function get getPoliticalList =>  _getPoliticalList;
  Future<void> _getPoliticalList()async{
    setisLoad(true);
    setlistPoliticalParty(await RemoteCamara().getRemotePoliticalParty());
    setisLoad(false);
  }

  @computed
  Function get details =>  _details;
  Future<void> _details()async{
    await Navigator.push(contextIU!, MaterialPageRoute(
        builder: (context)=> DetailsPoliticalParty(id: id,)));
  }
}