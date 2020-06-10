import 'package:flutter/material.dart';
import 'package:sample/data/data.dart';
import 'package:sample/models/model.dart';

class SkillsWidget extends StatelessWidget {
  final data = skills;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SKILLS',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child: Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      direction: Axis.horizontal,
                      children: skills
                          .map((e) => _buildSkillsSet(e, context))
                          .toList(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSkillsSet(DataModel data, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        width: 250,
        height: MediaQuery.of(context).size.height * 0.125,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(data.image, width: 50),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  data.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
