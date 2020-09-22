import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketing_shop/shampo_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ListTile listDrewer({IconData icon,String text}){
    return ListTile(
      leading: Icon(icon,color: Colors.white,),
      title: Text(text ,style: TextStyle(color: Colors.white,),),
    );
  }
  RaisedButton ListTilehorizontall({String image , String text}){
    return RaisedButton(
      color: Colors.grey[300],
      padding: EdgeInsets.all(15.0),
      child: Column(
       // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          Padding(
            padding: EdgeInsets.only(top:10),
            child: Text(text),
            ),
        ],
      ),
      onPressed: () {
        setState(() {
          //Navigator.of(context).push(shampo());
           Navigator.push(context, MaterialPageRoute(builder: (context)=> shampo()));
        });

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
       appBar : AppBar(
         elevation: 0.0,
        backgroundColor: Colors.grey[300],
        title: Text(" Company",style: TextStyle(color: Colors.black)),
      //elevation: defaultTargetPlatform ==TargetPlatform.android ? 5.0 :0.0 ,
        actions: <Widget>[
        IconButton (icon:Icon( Icons.search,color: Colors.black,),color: Colors.white,) ,
        IconButton (icon:Icon( Icons.notifications,color: Colors.black),color: Colors.white,) ,
      ],
    ),
       drawer:Drawer(
         child: Container(
           color: Colors.lightGreen[700],
           child: ListView(
            children: <Widget>[
            ListTile(
              trailing: IconButton (icon:Icon(Icons.clear,color: Colors.white,size: 20 ,),onPressed: (){},),
               title: Text("Company" ,style: TextStyle(color: Colors.white,fontSize: 25)),),
             listDrewer(icon: Icons.phone , text: "+91 98765432210"),
              Divider(color: Colors.white,),
              listDrewer(icon: Icons.account_balance_wallet , text: "My Wallet"),
              listDrewer(icon: Icons.view_list , text: "My Orders"),
              listDrewer(icon: Icons.local_offer , text: "Offers"),
              listDrewer(icon: Icons.cached, text: "Refer"),
              listDrewer(icon: Icons.exit_to_app, text: "LogOut"),
              listDrewer(icon: Icons.wb_auto , text: "About Us"),
              listDrewer(icon: Icons.star_border , text: "Rate Us"),
              listDrewer(icon: Icons.share , text: "Share"),
              Divider(color: Colors.white),
    ],),),),
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[300],
          child: ListView(

            children: <Widget>[
              Container(
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                  Container(padding: EdgeInsets.only(left: 20,top: 10), child: Text("Discover",)),
                  Container( padding: EdgeInsets.only(top: 10), width: 70, height: 25,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: (){},
                           child: Text("See All",style: TextStyle(fontSize: 15),),color: Colors.lightGreen[700],),
                  )
                  ], ), ),
              Container(
                height: 125,
                child : ListView (
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ListTilehorizontall( text: "Shampoo",image: "assets/e.png"),
                    ListTilehorizontall( text: "Oil",image: "assets/oils.jpg"),
                    ListTilehorizontall( text: "Bascuits",image: "assets/biscuite.jpg"),
                    ListTilehorizontall( text: "juce",image: "assets/juce2.jpg"),
                ],
                )
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10,top: 10,right: 10,left: 10),
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: Image.asset("assets/big_image2.jpg"),
                //child: Image.asset("assets/big_image2.jpg"),
              ),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                 child : Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                   Container(padding: EdgeInsets.only(left: 20,top: 10), child: Text("Your Previous Order",)),
                   Container( padding: EdgeInsets.only(top: 10), width: 70, height: 25,
                    child: RaisedButton(textColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)), onPressed: (){},
                     child: Text("See All",style: TextStyle(fontSize: 15),),color: Colors.lightGreen[700],),)
                   ], ), ),

              Container(
                //padding: EdgeInsets.all(10.0),
                height: 220,
                child : ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  children: <Widget>[
                    Container(
                      width: 125,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                        //padding: EdgeInsets.only(bottom: 15,top: 20,right: 20,left: 30),
                        //color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        child :Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 100,child: Image.asset("assets/doritos.jpg"),),
                            Text("20 LE",style:TextStyle(fontSize: 20 ,fontStyle: FontStyle.italic)),
                            Text("Doritos black "),
                            Text("1 kg"),
                            Container( padding: EdgeInsets.only(top: 10), width: 55, height: 20,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: RaisedButton(textColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)), onPressed: (){},
                                  child: Text("Add + ",style: TextStyle(fontSize: 10),),color: Colors.lightGreen[700],),
                              ),
                            )
                          ],
                        )
                        ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      width: 125,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                        //padding: EdgeInsets.only(bottom: 15,top: 20,right: 20,left: 30),
                        //color: Colors.white,
                        //padding: EdgeInsets.only(right: 30.0,top: 15,left: 15,bottom: 15),
                        padding: EdgeInsets.all(10),
                        child :Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container( height: 100,child: Center(child: Image.asset("assets/doritos2.jpg"),)),
                            Text("20 LE",style:TextStyle(fontSize: 20 ,fontStyle: FontStyle.italic)),
                            Text("Doritos black "),
                            Text("1 kg"),
                            Container( padding: EdgeInsets.only(top: 10), width: 55, height: 20,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: RaisedButton(textColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)), onPressed: (){},
                                  child: Text("Add + ",style: TextStyle(fontSize: 10),),color: Colors.lightGreen[700],),
                              ),
                            )
                          ],
                        )
                    ),
                  ], ),
              ),
              Container( alignment:Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                height: 200,
                width: 150,
                child: Image.asset("assets/big_image.jpg"),
              ),
           ],
        ),
      ),),);
  }
}
