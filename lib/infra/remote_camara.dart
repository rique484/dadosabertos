import 'package:dio/dio.dart';

import '../domain/model/political_members.dart';
import '../domain/model/political_party_details.dart';
import '../domain/model/politicals_party.dart';

class RemoteCamara{
static const _urlBase = 'https://dadosabertos.camara.leg.br/api/v2/';
static const _getPoliticalParty = 'partidos?itens=100&ordem=ASC&ordenarPor=sigla';
static const _getPoliticalPartyById = '/partidos/';
static const _getPoliticalPartyMembers = '/partidos/';

Future<List<PoliticalParty>?> getRemotePoliticalParty() async {
  try {
    var response = await Dio().get(_urlBase + _getPoliticalParty);
    List<PoliticalParty>? list = [];
    if (response.statusCode == 200) {
      list = PoliticalsParty.fromJson(response.data).dados;
    }
    return list;
  } catch (e) {
    return [];
  }
}

Future<PoliticalPartyDetails?> getRemotePoliticalPartyById(int id) async {
  try {
    var response = await Dio().get(_urlBase
        + _getPoliticalPartyById
        + id.toString()
    );
    PoliticalPartyDetails? data;
    if (response.statusCode == 200) {
      data = PoliticalPartyDetails.fromJson(response.data);
    }
    return data;
  } catch (e) {
    return null;
  }
}

Future<List<Member>?> getRemotePoliticalPartyMembers(int id) async {
  try {
    var response = await Dio().get(_urlBase
        + _getPoliticalPartyMembers
        + id.toString()
        + '/membros?itens=100'
    );
    List<Member>? list = [];
    if (response.statusCode == 200) {
      list = PoliticalMembers.fromJson(response.data).dados;
    }
    return list;
  } catch (e) {
    return [];
  }
}

}