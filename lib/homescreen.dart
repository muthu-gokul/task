import 'package:flutter/material.dart';
import 'package:task/home.dart';
import 'package:task/offers.dart';
import 'package:task/settings.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late double width,height;
 int menu=0;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: menu==0?Home():
         menu==1?Offers():
        Settings(),
        bottomNavigationBar: Container(
          height: 70,
          width: width,

          decoration: BoxDecoration(
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFf7f7f7),
                blurRadius: 10,
                spreadRadius: 10
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    menu=0;
                  });
                },
                child: Container(
                  height: 30,
                  width: width*0.3,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: menu==0?Colors.blue:Colors.grey[200]
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.home,color: menu==0?Colors.white:Colors.grey,size: 20,),
                      Text("   Home",style: TextStyle(fontSize: 15,color:menu==0?Colors.white: Colors.grey[700]),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    menu=1;
                  });
                },
                child: Container(
                  height: 30,
                  width: width*0.3,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: menu==1?Colors.blue:Colors.grey[200]
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.wallet_giftcard_sharp,color: menu==1?Colors.white:Colors.grey,size: 17,),
                      Text("   Offers",style: TextStyle(fontSize: 15,color:menu==1?Colors.white: Colors.grey[700]),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    menu=2;
                  });
                },
                child: Container(
                  height: 30,
                  width: width*0.3,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: menu==2?Colors.blue:Colors.grey[200]
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.settings,color: menu==2?Colors.white:Colors.grey,size: 20,),
                      Text("  Settings",style: TextStyle(fontSize: 15,color:menu==2?Colors.white: Colors.grey[700]),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
