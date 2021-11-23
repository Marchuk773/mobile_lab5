import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolendar/api_firestore/api_firestore.dart';
import 'package:rolendar/bloc/action.dart';

class ActionBloc extends Bloc<Action, String> {
  ActionBloc(String initialState) : super(initialState);

  @override
  Stream<String> mapEventToState(Action event) async* {

    if (event is SaveAction) {

      await ApiFirestore(documentId: "", collectionId: event.collectionID)
          .setData(event.rolendar.title, event.rolendar.form,
              event.rolendar.date, event.rolendar.date);
    } else if (event is DeleteAction) {

      await ApiFirestore(
              documentId: event.documentID, collectionId: event.collectionID)
          .delete();
    } else {
      print("Wrong event");
    }
  }
}
