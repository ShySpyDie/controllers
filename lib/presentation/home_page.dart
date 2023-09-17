import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _i = 0;

  void _count() {
    setState(() {
      _i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clicker'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
            color: Colors.amber,
          ),
          child: SizedBox(
            height: 400.0,
            width: 300.0,
            child: Center(
              child: Text(
                '$_i',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _count,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
