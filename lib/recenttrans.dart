import 'package:flutter/material.dart';
class RecentTrans extends StatefulWidget {

  @override
  _RecentTransState createState() => _RecentTransState();
}

class _RecentTransState extends State<RecentTrans> {
   double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Color(0xFFf5f5f7),
          child: Column(
            children: [
              Container(
                height: 50,
                width: width*0.85,
                child: Row(
                  children: [
                    Text("recent transactions",style: TextStyle(fontSize: 14,color: Colors.grey),),
                    Spacer(),
                    Text("view all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF7A7A7B)),),
                    Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 75,

                      padding: EdgeInsets.only(left: 20,right: 20),
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF3F54A2)
                            ),
                            child: Center(
                              child: Icon(Icons.fastfood_outlined,color: Colors.white,size: 15,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("McDonalds",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                              SizedBox(height: 3,),
                              Text("12:12 AM IST - Sep 2",style: TextStyle(fontSize: 12,color: Colors.grey),),


                            ],
                          ),
                          Spacer(),
                          Text("\$12.56",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,

                      padding: EdgeInsets.only(left: 20,right: 20),
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFDC434A)
                            ),
                            child: Center(
                              child: Transform.rotate(
                                  angle:12,
                                  child: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 18,)),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Exchange from INR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                              SizedBox(height: 3,),
                              Text("12:12 AM IST - Sep 2",style: TextStyle(fontSize: 12,color: Colors.grey),),


                            ],
                          ),
                          Spacer(),
                          Text("\$401.98",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,

                      padding: EdgeInsets.only(left: 20,right: 20),
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1BC5E)
                            ),
                            child: Center(
                              child: Icon(Icons.person,color: Colors.white,size: 15,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("H&M Clothing",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                              SizedBox(height: 3,),
                              Text("12:12 AM IST - Sep 2",style: TextStyle(fontSize: 12,color: Colors.grey),),


                            ],
                          ),
                          Spacer(),
                          Text("\$129.56",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,

                      padding: EdgeInsets.only(left: 20,right: 20),
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF1CAB88)
                            ),
                            child: Center(
                              child: Transform.rotate(
                                  angle:65,
                                  child: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 18,)),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Load Currency USD",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                              SizedBox(height: 3,),
                              Text("12:12 AM IST - Sep 2",style: TextStyle(fontSize: 12,color: Colors.grey),),


                            ],
                          ),
                          Spacer(),
                          Text("\$150",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,

                      padding: EdgeInsets.only(left: 20,right: 20),
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF5596D5)
                            ),
                            child: Center(
                              child: Icon(Icons.credit_card_outlined,color: Colors.white,size: 18,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("ATM Withdrawal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                              SizedBox(height: 3,),
                              Text("12:12 AM IST - Sep 2",style: TextStyle(fontSize: 12,color: Colors.grey),),


                            ],
                          ),
                          Spacer(),
                          Text("\$40",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF5F5F61)),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.amber,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
