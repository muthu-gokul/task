import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task/constants/constant.dart';
import 'package:task/notifier/dataNotifier.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   double width,height;

   PageController slidesController;
   int slideIndex=0;
@override
  void initState() {
    slidesController=PageController(viewportFraction: 0.8);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Consumer<DataNotifier>(
      builder:(ctx,dn,child)=> Stack(
        children: [
          Container(
            height: height+50,
            width: width,
            color: Color(0xFFf5f5f7),
            child:dn.data.isEmpty?Container(): SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: width,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: width,
                          child: PageView(
                            children: [
                              for(int i=0;i<dn.backgroundImages.length;i++)
                                Image.network("${dn.backgroundImages[i].image}",fit: BoxFit.cover,

                                )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45,
                            width: width*0.9,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),

                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: width*0.65,
                                  color: Colors.white,
                                  alignment: Alignment.centerLeft,
                                  child: Text("       Locality, Commercial, Flat",
                                  style: TextStyle(fontFamily: 'RR',color: Color(0xFFA5A5AC),fontSize: 16),),
                                ),
                                Container(
                                  height: 45,
                                  width: width*0.25,
                                  color: theme,
                                  alignment: Alignment.center,
                                  child: Text("Search",style: white15,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45,
                            width: width*0.8,
                            margin: EdgeInsets.only(top: 125),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: width*0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: theme,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("FIND PROPERTY",style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 12),),
                                ),
                                Container(
                                  height: 40,
                                  width: width*0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: theme,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("POST A PROPERTY",style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 12),),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: width,
                    color: Color(0xFF202023),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:200,

                          child: PageView(
                            onPageChanged: (i){
                              setState(() {
                                slideIndex=i;
                              });
                            },
                            controller: slidesController,
                            children: [
                              for(int i=0;i<dn.data[0].items.length;i++)
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  clipBehavior: Clip.antiAlias,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Image.network("${dn.data[0].items[i].image}",fit: BoxFit.cover,
                                  ),
                                )
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 35,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for(int i=0;i<dn.data[0].items.length;i++)
                                Container(
                                  child: Stack(
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 400),
                                        curve: animeCurve,
                                      // height: 12,
                                     //  width: 12,
                                        height:slideIndex==i? 12:0,
                                        width: slideIndex==i? 12:0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                          border: Border.all(color:slideIndex==i? theme:Colors.transparent)
                                        ),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        margin: EdgeInsets.only(right: 13,left: 2,top: 2),
                                        decoration: BoxDecoration(
                                          color: theme,
                                          borderRadius: BorderRadius.circular(2)
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 290,
                    width: width,
                    color: Color(0xFF202023),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: width,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            children: [
                              Text("Top Picks",style: TextStyle(fontFamily: 'RB',fontSize: 14,color: Colors.white),),
                              Spacer(),
                              Text("SEE ALL",style: TextStyle(fontFamily: 'RB',fontSize: 11,color: theme),),
                              Icon(Icons.arrow_right,color: theme,size: 14,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dn.data[1].items.length,
                            itemBuilder: (ctx,i){
                              return Container(
                                height: 250,
                                width: width*0.55,
                                margin: EdgeInsets.only(right: 20,left: i==0?20:0),
                                decoration: BoxDecoration(
                                  border:Border(bottom: BorderSide(color: Color(0xFFBDBDBD).withOpacity(0.2)))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 125,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: NetworkImage("${dn.data[1].items[i].thumbnail}",),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(5, 4, 5, 4),
                                          margin: EdgeInsets.only(right: 5,bottom: 10),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF131315),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text("FOR ${dn.data[1].items[i].transact.name.toUpperCase()}",style: TextStyle(fontFamily: 'RB',color: Colors.white,fontSize: 11)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        Text("₹${dn.data[1].items[i].price}",style: TextStyle(fontFamily: 'RB',color: Colors.white,fontSize: 14),),
                                        Spacer(),
                                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                                        SizedBox(width: 10,)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text("   ${dn.data[1].items[i].title}",style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 11),overflow: TextOverflow.ellipsis,),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 10,),
                                        for(int j=0;j<dn.data[1].items[i].attributes.length;j++)
                                          Container(
                                            padding: EdgeInsets.all(4),
                                            margin: EdgeInsets.only(right: 5),
                                            decoration: BoxDecoration(
                                              color: Color(0xFF131315),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            constraints: BoxConstraints(
                                              maxWidth: width*0.17
                                            ),
                                            child: Text("${dn.data[1].items[i].attributes[j].value} ${dn.data[1].items[i].attributes[j].unit??""}",
                                              style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 10,),overflow: TextOverflow.ellipsis,),
                                          )

                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        Icon(Icons.location_on,size: 14,color: Color(0xFFBDBDBD),),
                                        Text("${dn.data[1].items[i].locality}",style: TextStyle(fontFamily: 'RL',fontSize: 11,color: Color(0xFFBDBDBD)),)
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 280,
                    width: width,
                    color: Color(0xFF202023),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: width,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            children: [
                              Text("Latest",style: TextStyle(fontFamily: 'RB',fontSize: 14,color: Colors.white),),
                              Spacer(),
                              Text("SEE ALL",style: TextStyle(fontFamily: 'RB',fontSize: 11,color: theme),),
                              Icon(Icons.arrow_right,color: theme,size: 14,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dn.data[2].items.length,
                            itemBuilder: (ctx,i){
                              return Container(
                                height: 250,
                                width: width*0.55,
                                margin: EdgeInsets.only(right: 20,left: i==0?20:0),
                                decoration: BoxDecoration(
                                  border:Border(bottom: BorderSide(color: Color(0xFFBDBDBD).withOpacity(0.2)))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 125,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: NetworkImage("${dn.data[2].items[i].thumbnail}",),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(5, 4, 5, 4),
                                          margin: EdgeInsets.only(right: 5,bottom: 10),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF131315),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text("FOR ${dn.data[2].items[2].transact.name.toUpperCase()}",style: TextStyle(fontFamily: 'RB',color: Colors.white,fontSize: 11)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        Text("₹${dn.data[2].items[i].price}",style: TextStyle(fontFamily: 'RB',color: Colors.white,fontSize: 14),),
                                        Spacer(),
                                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                                        SizedBox(width: 10,)
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Text("   ${dn.data[2].items[i].title}",style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 11),overflow: TextOverflow.ellipsis,),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 10,),
                                        for(int j=0;j<dn.data[2].items[i].attributes.length;j++)
                                          Container(
                                            padding: EdgeInsets.all(4),
                                            margin: EdgeInsets.only(right: 5),
                                            decoration: BoxDecoration(
                                              color: Color(0xFF131315),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            constraints: BoxConstraints(
                                              maxWidth: width*0.17
                                            ),
                                            child: Text("${dn.data[2].items[i].attributes[j].value} ${dn.data[2].items[i].attributes[j].unit??""}",
                                              style: TextStyle(fontFamily: 'RR',color: Colors.white,fontSize: 10,),overflow: TextOverflow.ellipsis,),
                                          )

                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        Icon(Icons.location_on,size: 14,color: Color(0xFFBDBDBD),),
                                        Text("${dn.data[2].items[i].locality}",style: TextStyle(fontFamily: 'RL',fontSize: 11,color: Color(0xFFBDBDBD)),)
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    color: Color(0xFF202023),
                  )

                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 35,
            child: Container(
              height: 20,
              width: 20,
              child: Stack(
                children: [
                  Container(
                    height: 2,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.white
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 2,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.white
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 2,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 35,
            child: Row(
              children: [
                Icon(Icons.location_on_outlined,color: Colors.white,size: 18,),
                Text("  Maduravoyal",style: white15,)
              ],
            ),
          ),
          dn.data.isEmpty?Container(
              width: width,
              height: height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 20),
              child:Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300],
                  highlightColor: Colors.grey[100],
                  enabled: true,
                  child: ListView.builder(
                    itemBuilder: (_, __) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: width*0.55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width*0.55,
                                  height: 120,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: width*0.45,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: width*0.45,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 40.0,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 180,
                            width: width*0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width*0.55,
                                  height: 120,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: width*0.45,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: width*0.45,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 40.0,
                                  height: 8.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                    itemCount: 3,
                  ),
                ),
              ),
           ):Container()
        ],
      ),
    );
  }

}
