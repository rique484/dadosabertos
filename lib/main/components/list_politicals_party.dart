import 'package:flutter/material.dart';

import '../../domain/model/politicals_party.dart';

class ListPoliticalsParty  {
  Widget component(BuildContext context, PoliticalParty party, dynamic action) {
    return Card(
      elevation: 0.7,
      shadowColor: Colors.black.withOpacity(0.5),
      child: Container(
        margin: const EdgeInsets.all(2),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left:10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            party.sigla.toString()
                                + ' - '
                                + party.nome.toString(),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(onPressed: action, icon: const Icon(Icons.open_in_new, color: Colors.green,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
