import 'package:bidouilleP8/constants.dart';
import 'package:bidouilleP8/drawer.dart';
import 'package:bidouilleP8/models/action.dart';
import 'package:flutter/material.dart';

class ActionMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Action Movies",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: DrawerWidget(),
      body: GridView.builder(
          padding: EdgeInsets.all(kDefaultPadding),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemCount: actions.length,
          itemBuilder: (context, index) =>
              ActionMovieCard(action: actions[index])),
    );
  }
}

class ActionMovieCard extends StatelessWidget {
  final ActionMovieClass action;

  const ActionMovieCard({Key key, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 50.0, left: kDefaultPadding, right: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(action.image), fit: BoxFit.cover)),
          )),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 4),
            child: Text(
              action.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    color: Colors.orange,
                  ),
                  Text(
                    action.note,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
