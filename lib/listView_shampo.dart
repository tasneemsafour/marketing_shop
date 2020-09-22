import 'package:flutter/material.dart';
import 'package:marketing_shop/heads&shoulder.dart';

class shampo_list extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<shampo_list> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
               getshampoCard('assets/h.png', 'Heads &shoulder ', '75',Colors.indigo[900],),
                getshampoCard('assets/p.png', 'Pantine', '30',Colors.purple[300]),
                getshampoCard('assets/v.png', 'Vatika', '25',Colors.blue[100]),
                SizedBox(height: 15.0)
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 25.0),
                getshampoCard('assets/e.png', 'Elvive', '60 ',Colors.pink[300]),
                getshampoCard('assets/dove.png', 'Sun Block dove', '25',Colors.lightGreenAccent[400]),
                getshampoCard('assets/d.png', 'Dove Woman', '100',Colors.yellowAccent[700]),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget getshampoCard(String imgPath, String fruitName, String price,Color colorr) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 200.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2.0
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                 FlatButton(
                   child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                      //borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover
                      )
                ),),
                   onPressed: (){
                     fruitName == 'Sun Block dove' ? Navigator.push(context, MaterialPageRoute(builder: (context)=> heads())) : null ;
                   },
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.shopping_cart,color: Colors.blueGrey,)
                  ),
                ),
                /*Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite_border,color: Colors.white,)
                  ),
                )*/
              ],
            ),
            SizedBox(height: 15.0),
            Text( fruitName,
              style: TextStyle(
                  //fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            Text('\$' + price + ' each',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  color: Colors.black
              ),
            )
          ],
        ),
      ),
    );
  }
}
