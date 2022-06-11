import 'package:flutter/material.dart';

import '../../domain/model/political_members.dart';

class ListMembers {
  List<Widget> component(List<Member> data, BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < data.length; i++) {
       list.add(Card(
         child: Container(
           margin: const EdgeInsets.all(3),
           child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(3),
                child: Column(
                  children: [
                    CircleAvatar(radius: 30.0,
                      backgroundImage:
                      NetworkImage(data[i].urlFoto ?? ""),
                      backgroundColor: Colors.transparent,)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nome: ${data[i].nome??"Sem dado"}'),
                    Text('E-mail: ${data[i].email??"Sem dado"}')
                  ],
                ),
              )
            ],
      ),
         ),
       ));
    }
    return list;
  }
}
