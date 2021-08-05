import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/ApiManager.dart';
import 'package:task/constants/constant.dart';
import 'package:task/model/homeModel.dart';

class DataNotifier extends ChangeNotifier{

  HomeModel data1;

  List<Categories> categories=[];
  List<Data> data=[];
  List<Transact> transacts=[];
  List<BackgroundImages> backgroundImages=[];

  PageController bgController;
  int bgIndex=0;

  Future<dynamic> initialDbHit(BuildContext context) async{
    bgController=PageController(initialPage: 0);
    data.clear();
    await ApiManager().ApiCallGetInvoke({},context).then((value) {
        if(value !=null){
          var parsed=json.decode(value);
          data1=HomeModel.fromJson(parsed);
          categories=data1.categories;
          data=data1.data;
          transacts=data1.transacts;
          backgroundImages=data1.backgroundImages;
          bgSlider();
         notifyListeners();
        }
    });
  }


  bgSlider(){
    Timer.periodic(Duration(seconds: 2), (_){
      if(bgIndex<backgroundImages.length){
        bgIndex++;
      }
      else{
        bgIndex=0;
      }
      bgController.animateToPage(bgIndex, duration: animeDuration, curve: animeCurve);
    });
  }
}