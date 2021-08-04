import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  Future< String> ApiCallGetInvoke(var body,BuildContext context) async {
    try{
      var itemsUrl="https://milkiyat.bangalore2.com/api/home/";
      final response = await http.get(Uri.parse(itemsUrl),);
      if(response.statusCode==200){
        return response.body;
      }
    }
    catch(e){

    }

  }
}
