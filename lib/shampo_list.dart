import 'package:flutter/material.dart';
import 'package:marketing_shop/home.dart';
import 'package:marketing_shop/listView_shampo.dart';

class shampo extends StatefulWidget {
  @override
  _shampoState createState() => _shampoState();
}

class _shampoState extends State<shampo> with SingleTickerProviderStateMixin{
  TabController _tabController ;
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this,length: 3);
  }
  Container appbar(){
    return Container(
        padding: EdgeInsets.only(top: 10.0, right: 15.0, bottom: 10.0,),
        width: MediaQuery.of(context).size.width,
       child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back_ios), color: Colors.black, iconSize: 20.0, onPressed: () {setState(() {
            Navigator.of(context).pop(Home());
          });},),
        Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
            CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/e.png"),
           ),
            Text("Shampoo",style: TextStyle(color: Colors.black,fontSize: 20),),
        ],
       ),
        )
    ],),);
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          body: ListView(
           children: <Widget>[
             appbar(),
             Container(
                 height: MediaQuery.of(context).size.height - 200.0,
                 child: TabBarView(
                   controller: _tabController,
                   children:<Widget>[
                     new shampo_list(),
                     new shampo_list(),
                     new shampo_list()
                   ],
             )
            )
           ]
          )
        )
    );
  }
}