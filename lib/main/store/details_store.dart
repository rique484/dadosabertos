import 'package:flutter/material.dart';
import 'package:john/domain/model/political_party_details.dart';
import 'package:john/infra/remote_camara.dart';
import 'package:john/main/components/list_members.dart';
import 'package:mobx/mobx.dart';
//flutter packages pub run build_runner watch --delete-conflicting-outputs
part 'details_store.g.dart';

class DetailsStore = _DetailsStore with _$DetailsStore;

abstract class _DetailsStore with Store{
  @observable
  BuildContext? contextIU;
  @action
  void setcontext(BuildContext value) => contextIU = value;

  @observable
  bool isLoad = false;
  @action
  void setisLoad(bool value) => isLoad = value;

  @observable
  int id = 0;
  @action
  void setid(int value) => id = value;

  @observable
  List<Widget> membersList = [];
  @action
  void setmembersList(List<Widget> value) => membersList = value;

  @observable
  PoliticalPartyDetails? politicalPartyDetails = PoliticalPartyDetails();
  @action
  void setpoliticalPartyDetails(PoliticalPartyDetails? value) => politicalPartyDetails = value;

  @computed
  Function get getDetails =>  _getDetails;
  Future<void> _getDetails()async{
    setisLoad(true);
    setpoliticalPartyDetails(await RemoteCamara().getRemotePoliticalPartyById(id));
    setmembersList(ListMembers().component(await RemoteCamara().getRemotePoliticalPartyMembers(id)??[], contextIU!));
    setisLoad(false);
  }
}