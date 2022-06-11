import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:john/main/store/details_store.dart';

import '../components/roll_custom.dart';
import '../components/starts.dart';

class DetailsPoliticalParty extends StatefulWidget {
  const DetailsPoliticalParty({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<DetailsPoliticalParty> createState() => _DetailsPoliticalPartyState();
}

class _DetailsPoliticalPartyState extends State<DetailsPoliticalParty> {
  final DetailsStore _detailsStore = DetailsStore();

  @override
  void initState(){
    _detailsStore.setcontext(context);
    _detailsStore.setid(widget.id);
    _detailsStore.getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Stack(
        children: [
          Scaffold(
              body: Container(
                color: Colors.amber.withOpacity(0.03),
                child: Observer(builder: (_){
                  return Column(
                    children: [
                      Container(
                        height: 20,
                        color: Colors.green,
                      ),
                      Container(
                        height: 10,
                        color: Colors.amber,
                      ),
                      Container(
                        height: 8,
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: Starts().component(),
                        ),
                      ),
                      Container(
                        height: 6,
                        color: Colors.white,
                      ),
                      RollCustom().component(context),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 4, right: 4, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _detailsStore.politicalPartyDetails?.dados?.urlLogo != null ? Image.network(_detailsStore.politicalPartyDetails!.dados!.urlLogo.toString(),
                              isAntiAlias: true, scale: 1.5,
                              errorBuilder: (BuildContext c, Object o, StackTrace? s) {
                                return const Icon(Icons.image_not_supported_outlined);
                              },) : Container(),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              // color: Colors.green,
                              padding: const EdgeInsets.all(4),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Dados do Partido',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                                  ),
                                  Text(
                                    'Nome: ${_detailsStore.politicalPartyDetails?.dados?.nome ?? "Sem dados"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Número Eleitoral: ${_detailsStore.politicalPartyDetails?.dados?.numeroEleitoral ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Sigla: ${_detailsStore.politicalPartyDetails?.dados?.sigla ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Facebook: ${_detailsStore.politicalPartyDetails?.dados?.urlFacebook ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'WebSite: ${_detailsStore.politicalPartyDetails?.dados?.urlWebSite ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Status',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                                  ),
                                  Text(
                                    'Data: ${_detailsStore.politicalPartyDetails?.dados?.status?.data ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Lider: ${_detailsStore.politicalPartyDetails?.dados?.status?.lider?.nome ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Situação: ${_detailsStore.politicalPartyDetails?.dados?.status?.situacao ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Total Membros: ${_detailsStore.politicalPartyDetails?.dados?.status?.totalMembros ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Total Posse: ${_detailsStore.politicalPartyDetails?.dados?.status?.totalPosse ?? "Sem dado"}',
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Lista de Membros',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                                  ),
                                  Column(
                                    children: _detailsStore.membersList,
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  );
                }),
              )),
          _detailsStore.isLoad ? Blur(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            blurColor: Colors.lightGreen,
            overlay: const CircularProgressIndicator(),
          ) : Container()
        ],
      );
    });
  }
}
