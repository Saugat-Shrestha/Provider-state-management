import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello/provide.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final counting = Provider.of<count>(context, listen: false);
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 50), (timer) {
      counting.setcount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("hello");
    final counting = Provider.of<count>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(child: Consumer<count>(
        builder: (context, value, child) {
          return Text(
            value.add.toString(),
            style: TextStyle(fontSize: 29),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counting.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
