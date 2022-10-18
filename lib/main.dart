import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}




class MyApp extends StatefulWidget{
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 0;
  var name = ['김명준', '이찬혁', '김치찜'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i){
            return ListTile(
              leading: Text(like[i].toString()),
              title: Text(name[i]),
              trailing: ElevatedButton(child: Text('좋아요'), onPressed: (){
                setState(() {
                  like[i]++;
                });
              }),
            );
          },
        )
        ),
      );
  }
}

