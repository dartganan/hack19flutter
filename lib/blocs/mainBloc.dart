import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hack19flutter/models/askModel.dart';

class BlocMain implements BlocBase {
  BlocMain();

  @override
  void dispose() {}

  Stream<QuerySnapshot> get asks =>
      Firestore.instance.collection("dart").snapshots();

  Future<Null> addAsk(AskModel ask) async {
    print("add ask");
    print(ask.toJson());
    await Firestore.instance.collection("dart").add(ask.toJson());
  }
}
