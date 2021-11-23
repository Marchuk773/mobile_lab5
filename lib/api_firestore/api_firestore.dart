import 'package:cloud_firestore/cloud_firestore.dart';

import 'model.dart';

class ApiFirestore {
  final String documentId;
  final String collectionId;

  ApiFirestore({required this.collectionId, required this.documentId});

  CollectionReference reference =
      FirebaseFirestore.instance.collection("Rolendar");

  Future setData(
      String title, String form, String date, String description) async {
    return await reference
        .doc("7DyG45u5s4FDSn08IHQE")
        .collection(collectionId)
        .doc()
        .set({
      "title": title,
      'form': form,
      "date": date,
      "description": description
    });
  }

  Future delete() async {
    return await reference
        .doc("7DyG45u5s4FDSn08IHQE")
        .collection(collectionId)
        .doc(documentId)
        .delete();
  }

  List<Rolendar> _dataFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Rolendar(
        id: (doc.id as dynamic) ?? '',
        title: (doc.data() as dynamic)['title'] ?? '',
        date: (doc.data() as dynamic)['date'] ?? "0.0",
        form: (doc.data() as dynamic)['form'] ?? "0",
        description: (doc.data() as dynamic)['description'] ?? "0",
      );
    }).toList();
  }

  Stream<List<Rolendar>> get data {
    return reference
        .doc("7DyG45u5s4FDSn08IHQE")
        .collection(collectionId)
        .snapshots()
        .map(_dataFromSnapshot);
  }
}
