import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Lot.dart';

void main() => runApp(MyApp());

class MRouters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        }),
      ),
    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          leading: (
             IconButton(icon: Icon(Icons.notifications), onPressed: (){})
          ),
          title: Text('فلاتر اپ'),
        ),
        body: 
        Container(
          height: 250,
          width: 500,
          
          child:
          GridView.count(crossAxisCount: 1,
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: <Widget>[
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            child:Image.network('http://uupload.ir/files/if5_si-o-se-pol.jpg',
            fit: BoxFit.cover,),
            ),
            footer:Container( 
              child:ListTile(
              leading: FlutterLogo(size: 32.0),
              title: Text('عنوان',style: TextStyle(color:Colors.white)),
              subtitle: Text('زیر متن شما',style: TextStyle(color:Colors.grey[200])),
              trailing: Builder(builder: (context)=>IconButton(icon: Icon(Icons.open_with), onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyCity()));
              }),),
            ),
            ),
            ),
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            ),
            footer: ListTile(
              leading: FlutterLogo(size: 18.0),
              title: Text('عنوان'),
              subtitle: Text('زیر متن شما'),
            ),
            ),
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            ),
            footer: ListTile(
              leading: FlutterLogo(size: 18.0),
              title: Text('عنوان'),
              subtitle: Text('زیر متن شما'),
            ),
            ),
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            ),
            footer: ListTile(
              leading: FlutterLogo(size: 18.0),
              title: Text('عنوان'),
              subtitle: Text('زیر متن شما'),
            ),
            ),
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            ),
            footer: ListTile(
              leading: FlutterLogo(size: 18.0),
              title: Text('عنوان'),
              subtitle: Text('زیر متن شما'),
            ),
            ),
            GridTile(child: 
            Container(
            color: Colors.grey[300], 
            ),
            footer: ListTile(
              leading: FlutterLogo(size: 18.0),
              title: Text('عنوان'),
              subtitle: Text('زیر متن شما'),
            ),
            ),
          ],)
      ),
      ),
    );
  }
}






