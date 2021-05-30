import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suriyawonwin/model/course.dart';
import 'package:suriyawonwin/model/sidebar.dart';
import 'components/cards/recent_course_card.dart';
import 'components/sidebar_row.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Container(
          child: ResentCourseCard(
            course: recentCourses[0],
          ),
        )),
      ),
    );
  }
}

