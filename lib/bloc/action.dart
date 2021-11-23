import 'package:rolendar/api_firestore/model.dart';

abstract class Action {
  String? get collectionID => null;

  Rolendar? get rolendar => null;
}

class SaveAction extends Action {
  SaveAction(this._collectionID, this._rolendar);

  final String _collectionID;

  @override
  String get collectionID => _collectionID;
  final Rolendar _rolendar;

  @override
  Rolendar get rolendar => _rolendar;
}

class DeleteAction extends Action {
  DeleteAction(this._collectionID, this._documentID);

  final String _collectionID;

  @override
  String get collectionID => _collectionID;
  final String _documentID;

  String get documentID => _documentID;
}
