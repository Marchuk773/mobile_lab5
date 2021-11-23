import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolendar/api_firestore/api_firestore.dart';
import 'package:rolendar/api_firestore/model.dart';
import 'package:rolendar/navigation/bottom_navigation.dart';

import 'elements/saved_item_list.dart';

class SavedView extends StatelessWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Rolendar>>.value(
        value: ApiFirestore(documentId: 'documentId', collectionId: "Selected")
            .data,
        initialData: const [],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade800,
            title: const Text('Ролендарь(Обрані події)'),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SavedItemList(),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigation(),
          backgroundColor: Colors.deepPurple.shade700,
        ));
  }
}
