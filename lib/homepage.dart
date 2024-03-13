// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String?name;
  var box=Hive.openBox('name_box');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Center(child: Text('Hive App')),),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(children: [
        SizedBox(height: 40,),
        Row(children: [
          Expanded(child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Entar your text'
            ),
            onChanged: ( String value) {
              name=value;
            },
          )),
          IconButton(onPressed: () {
             if (name != null) {
                        box.add(name);
                        print('$name is Added into HiveBox');
              setState(() {
                
              });
            }
          }, icon: Icon(Icons.send))
        ],),
        Expanded(child: ListView.builder(
          itemCount: box.length,
          itemBuilder:(context, index) {
          var name=box.getAt(index);
          return Card(
            child: Center(child: Text('$name'),),
          );
        },))
       ],),

     ),

    );
  }
}