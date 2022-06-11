import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:john/main/components/starts.dart';
import 'package:john/main/store/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../components/list_politicals_party.dart';
import '../components/roll_custom.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeStore _homeStore = HomeStore();
  @override
  void initState() {
    _homeStore.setcontext(context);
    _homeStore.getPoliticalList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text(
                'Partidos Políticos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              elevation: 0,
              backgroundColor: Colors.green,
            ),
            body: Container(
              color: Colors.amber.withOpacity(0.03),
              child: Column(
                children: [
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
                  Expanded(child: Observer(
                    builder: (_) {
                      return ListView.builder(
                        itemCount: _homeStore.listPoliticalParty?.length,
                        itemBuilder: (context, index) {
                          int? id = 0;
                          if (_homeStore.listPoliticalParty![index].id != null) {
                            id = _homeStore.listPoliticalParty![index].id;
                          }
                          return ListPoliticalsParty().component(
                              context,
                              _homeStore.listPoliticalParty![index],
                                  () => {
                                _homeStore.setid(id!),
                                _homeStore.details()
                              });
                        },
                      );
                    },
                  ))
                ],
              ),
            ),
          ),
          _homeStore.isLoad ? Blur(
              child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          blurColor: Colors.lightGreen,
            overlay: const CircularProgressIndicator(),
          ) : Container(),
        ],
      );
    });
  }
}
