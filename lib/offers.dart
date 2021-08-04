import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notifier/dataNotifier.dart';
class Offers extends StatefulWidget {

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
   double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Consumer<DataNotifier>(
      builder:(ctx,dn,child)=> Container(
        height: height,
        width: width,
        color: Color(0xFFf5f5f7),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("${dn.categories.length}"),
            Text("${dn.data.length}"),
            Text("${dn.transacts.length}"),
            Text("${dn.backgroundImages.length}"),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: dn.categories.length,
                itemBuilder: (ctx,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${dn.categories[i].name} _ ${dn.categories[i].icon} _ ${dn.categories[i].slug} "),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: dn.data.length,
                itemBuilder: (ctx,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${dn.data[i].title} _ ${dn.data[i].items.length} _ ${dn.data[i].type} "),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: dn.transacts.length,
                itemBuilder: (ctx,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${dn.transacts[i].name} _ ${dn.transacts[i].slug} _ ${dn.transacts[i].id}  _ ${dn.transacts[i].labelSeller} "),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: dn.backgroundImages.length,
                itemBuilder: (ctx,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${dn.backgroundImages[i].title}  ${dn.backgroundImages[i].image}  "),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
