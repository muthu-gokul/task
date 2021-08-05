import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task/constants/constant.dart';
import 'package:task/home.dart';
import 'package:task/notifier/dataNotifier.dart';
import 'package:task/offers.dart';
import 'package:task/settings.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width,height;
 int menu=0;

 @override
  void didChangeDependencies() {

    super.didChangeDependencies();
  }


 @override
  void initState() {
   Provider.of<DataNotifier>(context, listen: false).initialDbHit(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent
      ),
      child: Scaffold(
        body:
        //Home(),
        menu==0?Home():
         menu==1?Offers():
        Settings(),
        bottomNavigationBar: Container(
          height: 70,
          width: width,

          decoration: BoxDecoration(
              color:Color(0xFF202023),
            boxShadow: [
              BoxShadow(
                color: theme,
                blurRadius: 5,
                spreadRadius: 1
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  Provider.of<DataNotifier>(context, listen: false).initialDbHit(context);
                  setState(() {
                    menu=0;
                  });
                },
                child: Container(
                  height: 50,
                 // width: width*0.2,
              //    padding: EdgeInsets.only(left: 10,right: 10),
                 // decoration: BoxDecoration(
                //    borderRadius: BorderRadius.circular(25),
                //    color: menu==0?Colors.blue:Colors.grey[200]
                //  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: menu==0?theme:Colors.grey,size: 24,),
                      Text("Home",style: TextStyle(fontSize: 12,color:menu==0?theme: Colors.grey[700]),)
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
                  height: 50,
                  child: Column(
                    children: [
                      Icon(Icons.file_copy_rounded,color: menu==1?theme:Colors.grey,size: 24,),
                      Text("Explore",style: TextStyle(fontSize: 12,color:menu==1?theme: Colors.grey[700]),)
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
                  height: 50,
                 /* width: width*0.3,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: menu==2?Colors.blue:Colors.grey[200]
                  ),*/
                  child: Column(
                    children: [
                      Icon(Icons.favorite,color: menu==2?theme:Colors.grey,size: 24,),
                      Text("Settings",style: TextStyle(fontSize: 12,color:menu==2?theme: Colors.grey[700]),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    menu=3;
                  });
                },
                child: Container(
                  height: 50,
                 /* width: width*0.3,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: menu==2?Colors.blue:Colors.grey[200]
                  ),*/
                  child: Column(
                    children: [
                      Icon(Icons.notifications,color: menu==3?theme:Colors.grey,size: 24,),
                      Text("Notifications",style: TextStyle(fontSize: 12,color:menu==3?theme: Colors.grey[700]),)
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
