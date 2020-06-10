import 'package:flutter/material.dart';
import 'package:sample/utils/enemurations.dart';
import 'package:sample/data/data.dart';
import 'package:sample/models/model.dart';

// import 'dart:html' as html;

class AboutWidget extends StatelessWidget {
  final ItemTypes type;
  AboutWidget({this.type});

  @override
  Widget build(BuildContext context) {
    AboutUserModel data = about;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        child: ListView(
          children: [
            SizedBox(height: 30),
            Center(
              child: Image.asset(
                data.image,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              data.name,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              data.from,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data.points
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(e),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            Row(
              children: social
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: InkWell(
                        onTap: () {
                        //  html.window.open(e.profileLink, e.name);
                        },
                        child: Image.asset(
                          e.image,
                          width: 50,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
