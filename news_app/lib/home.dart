import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = new TextEditingController();

  List<String> navBarItem = ["Top News", "India", "World", "Finance", "Health"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ARNE NEWS"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SafeArea(
              child: Container(
                  child: Column(children: [
                Container(
                  //Search Container
                  // color: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(24)),

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
                          controller: searchController,
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) => {print(value)},
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Health"),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: navBarItem.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(navBarItem[index]);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                navBarItem[index],
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                    ),
                    items: items.map(
                      (item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 20),
                                decoration: BoxDecoration(color: item));
                          },
                        );
                      },
                    ).toList())
              ])),
            )
          ],
        ));
  }

  final List items = [Colors.red, Colors.orange, Colors.red];
}
