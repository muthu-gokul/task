import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/ApiManager.dart';
import 'package:task/model/homeModel.dart';

class DataNotifier extends ChangeNotifier{

  HomeModel data1;

  List<Categories> categories=[];
  List<Data> data=[];
  List<Transact> transacts=[];
  List<BackgroundImages> backgroundImages=[];

  Future<dynamic> initialDbHit(BuildContext context) async{
    data.clear();
   // updateIsLoad(true);
    await ApiManager().ApiCallGetInvoke({},context).then((value) {
        if(value !=null){
          var parsed=json.decode(value);
          data1=HomeModel.fromJson(parsed);
          categories=data1.categories;
          data=data1.data;
          transacts=data1.transacts;
          backgroundImages=data1.backgroundImages;
      //    updateIsLoad(false);
         notifyListeners();
        }
        else{
        //  updateIsLoad(false);
        }

    });
  }

  bool isLoad=false;
  updateIsLoad(bool value){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isLoad=value;
      notifyListeners();
    });

  }
}