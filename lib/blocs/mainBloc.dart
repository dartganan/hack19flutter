

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BlocMain implements BlocBase{



    BlocMain();


    @override
    void dispose(){
    }


get asks => Firestore.instance
                      .collection("asks")
                      .orderBy("created_at", descending: true)
                      .snapshots();





}