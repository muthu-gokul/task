import 'package:flutter/material.dart';
class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  late double width,height;
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
              height: 50,
              width: width*0.85,
              child: Row(
                children: [
                  Text("offers for you",style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Spacer(),
                  Text("view all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF7A7A7B)),),
                  Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                ],
              ),
            ),
            Container(
              width: width*(0.85),
              height: 240,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: width*0.85,
                    child: Image.asset("assets/icons/tablets.jpg",fit: BoxFit.cover,height: 160,),
                  ),
                  SizedBox(height: 10,),
                  Text("    Apollo Pharmacy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF464648)),),
                  SizedBox(height: 5,),
                  Text("       Upto 15% off* at Apollo Pharmacy",style: TextStyle(fontSize: 12,color: Colors.grey),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
