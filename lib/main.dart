import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/homescreen.dart';
import 'package:task/notifier/dataNotifier.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataNotifier>(create:(_)=>DataNotifier()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  HomeScreen(),
      ),
    );
  }
}


