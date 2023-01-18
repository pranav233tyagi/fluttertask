import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print("This is init state");
  }

  @override
  Widget build(BuildContext context) {
    var city_name = ["Mumbai", "Delhi", "Chennai", "Dhar", "Indore", "London"];

    final _random = new Random();
    var city = city_name[_random.nextInt(city_name.length)];

    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(children: [
        Container(
          //Search Container
          // color: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 8),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(24)),

          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.blueAccent,
                    ),
                    margin: EdgeInsets.fromLTRB(3, 0, 7, 0)),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Search $city"),
                ),
              ),
            ],
          ),
        )
      ])),
    ));
  }
}
