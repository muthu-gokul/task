import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/recenttrans.dart';

class CountryModel{
  String symbol;
  double rupees;
  String shtForm;
  String img;
  CountryModel({required this.symbol,required this.img,required this.rupees,required this.shtForm});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double width,height;
  List<CountryModel> list=[
    CountryModel(symbol: '\$', img: "assets/icons/united.svg", rupees: 563, shtForm: "USD"),
    CountryModel(symbol: '\$', img: "assets/icons/united.svg", rupees: 565.2, shtForm: "USD"),
    CountryModel(symbol: 'C\$', img: "assets/icons/canada.svg", rupees: 389, shtForm: "CAD"),
    CountryModel(symbol: 'C\$', img: "assets/icons/india.svg", rupees: 533.99, shtForm: "AEO"),
    CountryModel(symbol: 'S\$', img: "assets/icons/cote.svg", rupees: 574.24, shtForm: "SBD"),
    CountryModel(symbol: 'A\$', img: "assets/icons/austallia.svg", rupees: 975.56, shtForm: "AUD"),
    CountryModel(symbol: 'C', img: "assets/icons/colombia.svg", rupees: 805, shtForm: "CUI"),
    CountryModel(symbol: 'C\$', img: "assets/icons/canada.svg", rupees: 897.9, shtForm: "CAD"),
  ];
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      color: Color(0xFFf5f5f7),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: height*0.75,
            width: width*0.85,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.maxFinite,
                  color: Color(0xFFF8f8f8),
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    children: [
                      Text("YESBANK - 212.4",style: TextStyle(fontSize: 13,color: Color(0xFF777779),fontWeight: FontWeight.w500,letterSpacing: 0.2),),
                      Spacer(),
                      SvgPicture.asset("assets/icons/visa.svg",height:35)
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: list.length,
                      itemBuilder: (ctx,index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, _createRoute());
                            },
                            child: Container(
                              height: 60,
                              color: Colors.white,
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                     // color: Colors.red
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset("${list[index].img}",height:40,fit: BoxFit.cover,),
                                    ),

                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: '${list[index].symbol} ',
                                          style: TextStyle(fontSize: 14,color: Colors.grey),
                                          children: <TextSpan>[
                                            TextSpan(text: '${list[index].rupees}', style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Color(0xFF7A7A7B))),
                                          ],
                                        ),
                                      ),
                                      Text("${list[index].shtForm}",style: TextStyle(fontSize: 14,color: Colors.grey),),


                                    ],
                                  ),
                                  Spacer(),
                                  Text("manage",style: TextStyle(fontSize: 14,color: Colors.grey),),
                                  Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                                ],
                              ),
                            ),
                          );
                      },
                      separatorBuilder: (ctx,i){
                        return Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          height: 1,
                          color: Colors.grey[300],
                        );
                      },

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => RecentTrans(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
