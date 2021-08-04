import 'package:flutter/material.dart';
class Settings extends StatefulWidget {


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Container(
      height: height-100,
      width: width,
      color: Color(0xFFf5f5f7),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              width: width*(0.85),
              height: 160,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Container(
                    width: width*0.425,
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ATM Locator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF464648)),),
                        SizedBox(height: 10,),
                        Text("Find a Visa ATM near your location",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        SizedBox(height: 10,),
                        Container(
                          height: 35,
                          width: width*0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.blue[700]
                          ),
                          alignment: Alignment.center,
                          child: Text("start looking",style: TextStyle(fontSize: 12,color: Colors.white),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.425,
                    child: Image.asset("assets/icons/atm.jpg",fit: BoxFit.cover,height: 160,),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: width*(0.85),
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: width*(0.85),
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Exchange Money",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF464648)),),
                        SizedBox(height: 10,),
                        Text("Find out real-time Exchange rates & \nExchange between your balances.",style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Divider(color: Color(0xFFf7f7ff7),),
                  Container(
                    height: 70,
                    width: width*(0.85),
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text("USD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF464648)),),
                                SizedBox(width: 10,),
                                Icon(Icons.keyboard_arrow_down_outlined,color: Colors.blue[700],)
                              ],
                            ),
                  SizedBox(height: 10,),
                  Text("Balance: \$1319",style: TextStyle(fontSize: 12,color: Colors.grey),),

                ],
                        ),
                        Spacer(),
                        Text("1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Color(0xFF464648)),),

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: (width*0.3)-20,
                        height: 1,
                        color: Colors.grey[300],
                      ),
                      Container(
                        height: 30,
                        width: width*0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200]
                        ),
                        child: Center(
                          child:                         Text("1\$ = C0.91",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xFF464648)),),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        width: (width*0.3)-20,
                        height: 1,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    width: width*(0.85),
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text("EUR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF464648)),),
                                SizedBox(width: 10,),
                                Icon(Icons.keyboard_arrow_down_outlined,color: Colors.blue[700],)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Balance: \C20",style: TextStyle(fontSize: 12,color: Colors.grey),),

                          ],
                        ),
                        Spacer(),
                        Text("0.91",style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Color(0xFF464648)),),

                      ],
                    ),
                  ),
                  Divider(color: Color(0xFFf7f7ff7),),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 35,
                      width: width*0.3,
                      margin: EdgeInsets.only(left: 20,top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue[700]
                      ),
                      alignment: Alignment.center,
                      child: Text("exchange now",style: TextStyle(fontSize: 12,color: Colors.white),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
