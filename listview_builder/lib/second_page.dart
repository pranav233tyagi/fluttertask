import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
              child: Text("Add ListTile"),
            ),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.blue : Colors.orange,
                  child: ListTile(
                    trailing: Icon(Icons.device_hub),
                    title: Text("hello"),
                    subtitle: Text("subtitle"),
                    leading: Icon(Icons.local_activity),
                  ),
                );
              },
              itemCount: number,
            ),
          ],
        ),
      ),
    );
  }
}
