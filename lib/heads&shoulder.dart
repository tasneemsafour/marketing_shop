import 'package:flutter/material.dart';

class heads extends StatefulWidget {
  @override
  _headsState createState() => _headsState();
}

class _headsState extends State<heads> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.amber,
          leading: IconButton(icon:Icon( Icons.arrow_back_ios,color: Colors.black,), onPressed:(){ Navigator.of(context).pop();}),
          title: Text(" Sun Block Dove",style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 175,
              width: 325,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180.0),bottomRight: Radius.circular(180.0),), color: Colors.amber,),
              child: Image.asset('assets/dove.png'),
            ),
             ListTile(
               trailing: IconButton (icon:Icon(Icons.shopping_cart,color: Colors.grey,size: 20 ,),onPressed: (){ color: Colors.black; },),
               title: Text("1 L" ,style: TextStyle(color: Colors.black,fontSize: 20)),
             ),
            ListTile(
              trailing: IconButton (icon:Icon(Icons.bookmark,color: Colors.grey,size: 20 ,),),
              title: Text("25 \$" ,style: TextStyle(color: Colors.black,fontSize: 20)),
            ),
            Text ('Description :',style: TextStyle(fontSize: 23),),
            Text ('the home of real beauty. For over a decade, weve been working to make beauty a source of confidence, not anxiety, and heres where the journey continuesBeauty is not defined by shape, size or color – it’s feeling like the best version of yourself. Authentic. Unique. Real. Which is why we’ve made sure our site reflects that. Every image you see here features women cast from real life. A real life version of beautyWhatever youre looking for products to provide you with the care you need, tips and advice ranging from hair care, to skin care, to underarm care – everything you see here is designed to make you feel beautiful.Explore the world of Dove below',style: TextStyle(fontSize: 15),)

          ],
        ),
      ),
    );
  }
}
